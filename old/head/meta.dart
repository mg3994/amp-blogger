import 'package:blogger_theme/blogger_theme.dart';

class BloggerMeta extends Component {
  const BloggerMeta();

  @override
  Iterable<Component> build() {
    return [
      BComment(children: [Text('[ Meta for browser ]')]),
      Meta(attributes: {'expr:charset': 'data:blog.encoding'}),
      Meta(attributes: {'content': 'IE=edge', 'http-equiv': 'X-UA-Compatible'}),
      Meta(
        attributes: {
          'content':
              'width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=yes',
          'name': 'viewport',
        },
      ),
      BIf(
        cond: 'data:view.isMultipleItems',
        children: [
          BIf(
            cond: 'data:view.isHomepage',
            children: [
              BComment(children: [Text('[ Homepage title ]')]),
              Title(
                children: [
                  BIf(
                    cond: 'data:vars.hometitle_status == "2px"',
                    children: [
                      BWith(
                        varName: 'title',
                        value: 'snippet(data:vars.home_title)',
                        children: [BData(value: 'title')],
                      ),
                      BElse(),
                      BData(value: 'blog.title.escaped'),
                    ],
                  ),
                ],
              ),
              ////
              ///
              BElseIf(cond: 'data:view.search.query'),
              BComment(children: [Text('[ Search title ]')]),
              Title(
                children: [
                  BData(value: 'messages.search'),
                  Text(': '),
                  BData(value: 'view.search.query'),
                ],
              ),
              BElseIf(cond: 'data:view.search.label'),
              BComment(children: [Text('[ Label title ]')]),
              Title(
                children: [
                  BData(value: 'blog.pageName.escaped'),
                  Text(' - '),
                  BData(value: 'blog.title.escaped'),
                ],
              ),
              BElseIf(cond: 'data:view.isArchive'),
              BComment(children: [Text('[ Archive title ]')]),
              BComment(
                children: [
                  Text(
                    '[ You can replace \'Blog archive in: \' with your own title ]',
                  ),
                ],
              ),
              Title(
                children: [
                  Text('Blog archive in: '),
                  BData(value: 'blog.pageName.escaped'),
                ],
              ),
              BElse(),
              BComment(
                children: [
                  Text('[ You can replace \'Blog: \' with your own title ]'),
                ],
              ),
              Title(
                children: [
                  Text('Blog: '),
                  BData(value: 'blog.title.escaped'),
                ],
              ),
            ],
          ),

          //
          BElseIf(cond: 'data:view.isError'),
          BComment(children: [Text('[ Error title ]')]),
          BComment(
            children: [
              Text(
                '[ You can replace \'Error 404: Not Found\' with your own error title ]',
              ),
            ],
          ),
          Title(children: [Text('Error 404: Not Found')]),
          BElse(),
          BComment(children: [Text('[ SingleItem title ]')]),
          BComment(
            children: [
              Text(
                '[ It will omit the blog title when the character count exceeds 57 ]',
              ),
            ],
          ),
          //
          BIf(
            cond: '(data:blog.pageName + data:blog.title).length gt 57',
            children: [
              Title(children: [BData(value: 'blog.pageName')]),
              BElse(),
              Title(
                children: [
                  BData(value: 'blog.pageName'),
                  Text(' - '),
                  BData(value: 'blog.title.escaped'),
                ],
              ),
            ],
          ),
          //
        ],
      ),

      /////////
      BIf(
        cond: '!data:view.isError',
        children: [
          BComment(children: [Text('[ Link Canonical ]')]),
          Link(
            attributes: {
              'expr:href': 'data:blog.url.canonical',
              'rel': 'canonical',
            },
          ),
          BComment(children: [Text('[ Link AMP ]')]),
          BIf(
            cond: 'data:amp.status and data:amp.type != 1 and !data:amp.active',
            children: [
              Link(
                attributes: {
                  'expr:href': 'params(data:blog.url.canonical, { amp: "1" })',
                  'rel': 'amphtml',
                },
              ),
            ],
          ),
          BComment(children: [Text('[ Meta description ]')]),
          BWith(
            varName: 'description',
            value:
                'data:blog.metaDescription ? data:blog.metaDescription : (data:view.isSingleItem and data:post.snippet ? snippet(data:post.snippet, { length: 147, links: false, linebreaks: false, ellipsis: false }) : (data:blog.pageName ? data:blog.pageName : data:blog.title))',
            children: [
              Meta(
                attributes: {
                  'expr:content': 'data:description.escaped',
                  'name': 'description',
                },
              ),
            ],
          ),
          BComment(children: [Text('[ Meta keywords ]')]),
          BIf(
            cond: 'data:vars.metatags_keywords == "2px"',
            children: [
              BWith(
                varName: 'keywords',
                value: 'snippet(data:vars.meta_keywords)',
                children: [
                  Meta(
                    attributes: {
                      'expr:content':
                          '(data:blog.title + (data:blog.pageName ? ", " + data:blog.pageName : "") + (data:keywords ? ", " + data:keywords : "")).escaped',
                      'name': 'keywords',
                    },
                  ),
                ],
              ),
            ],
          ),
          BComment(children: [Text('[ Meta rating ]')]),
          BIf(
            cond: 'data:vars.metatags_rating == "2px"',
            children: [
              Meta(
                attributes: {
                  'expr:content':
                      'data:blog.adultContent ? "adult" : "general"',
                  'name': 'rating',
                },
              ),
            ],
          ),
          BComment(children: [Text('[ Link image ]')]),
          BIf(
            cond: 'data:vars.metatags_image == "2px"',
            children: [
              BWith(
                varName: 'imageUrl',
                value:
                    'data:view.isSingleItem and data:widgets.Blog.first.posts.first.featuredImage ? data:widgets.Blog.first.posts.first.featuredImage : snippet(data:vars.meta_image)',
                children: [
                  BWith(
                    varName: 'image',
                    value: 'resizeImage(data:imageUrl, 1280, "16:9")',
                    children: [
                      BComment(
                        children: [
                          Text(
                            '[ Ensure image url begins with valid protocol ]',
                          ),
                        ],
                      ),
                      Link(
                        attributes: {
                          'expr:href':
                              '(data:image not contains "http://" and data:image not contains "https://" ? "https:" + data:image : data:image).escaped',
                          'rel': 'image_src',
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          BComment(children: [Text('[ Meta application ]')]),
          Meta(
            attributes: {
              'expr:content': 'data:blog.title',
              'name': 'application-name',
            },
          ),
          Meta(
            attributes: {
              'expr:content': 'data:blog.title',
              'name': 'apple-mobile-web-app-title',
            },
          ),
          Meta(
            attributes: {
              'content': 'yes',
              'name': 'apple-mobile-web-app-capable',
            },
          ),
        ],
      ),
      BComment(children: [Text('[ Favicon ]')]),
      BWith(
        varName: 'icon',
        value: 'snippet(data:vars.meta_icon)',
        children: [
          BIf(
            cond: 'data:icon',
            children: [
              Meta(
                attributes: {
                  'expr:content': 'resizeImage(data:icon, 144, "1:1")',
                  'name': 'msapplication-TileImage',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 57, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '57x57',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 60, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '60x60',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 72, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '72x72',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 76, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '76x76',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 114, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '114x114',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 120, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '120x120',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 144, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '144x144',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 152, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '152x152',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 180, "1:1")',
                  'rel': 'apple-touch-icon',
                  'sizes': '180x180',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 16, "1:1")',
                  'rel': 'icon',
                  'sizes': '16x16',
                  'type': 'image/png',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 32, "1:1")',
                  'rel': 'icon',
                  'sizes': '32x32',
                  'type': 'image/png',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 96, "1:1")',
                  'rel': 'icon',
                  'sizes': '96x96',
                  'type': 'image/png',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'resizeImage(data:icon, 192, "1:1")',
                  'rel': 'icon',
                  'sizes': '192x192',
                  'type': 'image/png',
                },
              ),

              //
              BElse(),
              Link(
                attributes: {
                  'expr:href': 'data:blog.blogspotFaviconUrl',
                  'rel': 'icon',
                  'type': 'image/x-icon',
                },
              ),
              Link(
                attributes: {
                  'expr:href': 'data:blog.blogspotFaviconUrl',
                  'rel': 'shortcut icon',
                  'type': 'image/x-icon',
                },
              ),

              //
            ],
          ),
        ],
      ),

      // ////
      BComment(children: [Text('[ Theme Color ]')]),
      BWith(
        varName: 'color',
        value:
            'snippet((data:vars.status_light != "transparent" ? data:vars.status_light : "#ffffff"))',
        children: [
          Meta(
            attributes: {'expr:content': 'data:color', 'name': 'theme-color'},
          ),
          Meta(
            attributes: {
              'expr:content': 'data:color',
              'name': 'msapplication-navbutton-color',
            },
          ),
          Meta(
            attributes: {
              'expr:content': 'data:color',
              'name': 'apple-mobile-web-app-status-bar-style',
            },
          ),
        ],
      ),
      BIf(
        cond: '!data:view.isError',
        children: [
          BComment(children: [Text('[ Meta generator ]')]),
          Meta(attributes: {'content': 'blogger', 'name': 'generator'}),
          BComment(children: [Text('[ Link ATOM and RSS feeds ]')]),
          BSwitch(
            varName: 'data:vars.metatags_feeds',
            children: [
              BCase(value: '2px'),
              BData(value: 'blog.feedLinks'),
              // here
              BCase(value: '3px'),
              BWith(
                varName: 'a',
                value:
                    '[path(data:blog.homepageUrl.canonical, "feeds/"), (data:view.isPost ? 1 : (data:view.isPage ? 2 : 0)), (data:view.isPost ? data:view.postId : (data:view.isPage ? data:view.pageId : ""))]',
                children: [
                  BIf(
                    cond: 'data:a[1] == 0',
                    children: [
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "posts/default"',
                          'expr:title':
                              '"ATOM (Blog Posts) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/atom+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "posts/default?alt=rss"',
                          'expr:title':
                              '"RSS (Blog Posts) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/rss+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "pages/default"',
                          'expr:title':
                              '"ATOM (Blog Pages) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/atom+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "pages/default?alt=rss"',
                          'expr:title':
                              '"RSS (Blog Pages) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/rss+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "comments/default"',
                          'expr:title':
                              '"ATOM (Blog Comments) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/atom+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href': 'data:a[0] + "comments/default?alt=rss"',
                          'expr:title':
                              '"RSS (Blog Comments) : " + data:blog.title.escaped',
                          'rel': 'alternate',
                          'type': 'application/rss+xml',
                        },
                      ),

                      BElse(),
                      Link(
                        attributes: {
                          'expr:href':
                              'data:a[0] + data:a[2] + "/posts/default"',
                          'expr:title':
                              '"ATOM (" + (data:a[1] == 1 ? "Post" : "Page") + ") : " + data:blog.pageName',
                          'rel': 'alternate',
                          'type': 'application/atom+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href':
                              'data:a[0] + data:a[2] + "/posts/default?alt=rss"',
                          'expr:title':
                              '"RSS (" + (data:a[1] == 1 ? "Post" : "Page") + ") : " + data:blog.pageName',
                          'rel': 'alternate',
                          'type': 'application/rss+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href':
                              'data:a[0] + data:a[2] + "/comments/default"',
                          'expr:title':
                              '"ATOM (" + (data:a[1] == 1 ? "Post" : "Page") + " Comments) : " + data:blog.pageName',
                          'rel': 'alternate',
                          'type': 'application/atom+xml',
                        },
                      ),
                      Link(
                        attributes: {
                          'expr:href':
                              'data:a[0] + data:a[2] + "/comments/default?alt=rss"',
                          'expr:title':
                              '"RSS (" + (data:a[1] == 1 ? "Post" : "Page") + " Comments) : " + data:blog.pageName',
                          'rel': 'alternate',
                          'type': 'application/rss+xml',
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          BComment(children: [Text('[ Link Sitemap ]')]),
          BIf(
            cond: 'data:vars.metatags_sitemap == "2px"',
            children: [
              Link(
                attributes: {
                  'expr:href':
                      'path(data:blog.homepageUrl.canonical, "sitemap.xml")',
                  'rel': 'sitemap',
                  'title': 'Sitemap (Blog Posts)',
                  'type': 'application/xml',
                },
              ),
              Link(
                attributes: {
                  'expr:href':
                      'path(data:blog.homepageUrl.canonical, "sitemap-pages.xml")',
                  'rel': 'sitemap',
                  'title': 'Sitemap (Blog Pages)',
                  'type': 'application/xml',
                },
              ),
            ],
          ),
          BComment(children: [Text('[ Open graph ]')]),
          BComment(children: [Text('[ Reference: ogp.me ]')]),
          BIf(
            cond: 'data:vars.metatags_openGraph == "2px"',
            children: [
              Meta(
                attributes: {
                  'expr:content': 'data:blog.locale.language',
                  'property': 'og:locale',
                },
              ),
              Meta(
                attributes: {
                  'expr:content': 'data:blog.title.escaped',
                  'property': 'og:site_name',
                },
              ),
              Meta(
                attributes: {
                  'expr:content':
                      '(data:blog.pageName ? data:blog.pageName : (data:view.isHomepage and data:vars.hometitle_status == "2px" ? snippet(data:vars.home_title) : data:blog.title)).escaped',
                  'property': 'og:title',
                },
              ),
              Meta(
                attributes: {
                  'expr:content': 'data:blog.url.canonical',
                  'property': 'og:url',
                },
              ),
              Meta(
                attributes: {
                  'expr:content':
                      '(data:view.isMultipleItems ? "website" : "article").escaped',
                  'property': 'og:type',
                },
              ),
              BWith(
                varName: 'description',
                value:
                    'data:blog.metaDescription ? data:blog.metaDescription : (data:view.isSingleItem and data:post.snippet ? snippet(data:post.snippet, { length: 147, links: false, linebreaks: false, ellipsis: false }) : (data:blog.pageName ? data:blog.pageName : data:blog.title))',
                children: [
                  Meta(
                    attributes: {
                      'expr:content': 'data:description.escaped',
                      'property': 'og:description',
                    },
                  ),
                ],
              ),
              BWith(
                varName: 'imageUrl',
                value:
                    'data:view.isSingleItem and data:widgets.Blog.first.posts.first.featuredImage ? data:widgets.Blog.first.posts.first.featuredImage : snippet(data:skin.vars.opengraph_image)',
                children: [
                  BWith(
                    varName: 'image',
                    value: 'resizeImage(data:imageUrl, 1280, "16:9")',
                    children: [
                      BComment(
                        children: [
                          Text(
                            "[ Ensure image url begins with valid protocol ]",
                          ),
                        ],
                      ),
                      Meta(
                        attributes: {
                          'expr:content':
                              '(data:image not contains "http://" and data:image not contains "https://" ? "https:" + data:image : data:image).escaped',
                          'property': 'og:image',
                        },
                      ),
                      BIf(
                        cond: 'data:image.width',
                        children: [
                          Meta(
                            attributes: {
                              'expr:content': 'data:image.width',
                              'property': 'og:image:width',
                            },
                          ),
                        ],
                      ),
                      BIf(
                        cond: 'data:image.height',
                        children: [
                          Meta(
                            attributes: {
                              'expr:content': 'data:image.height',
                              'property': 'og:image:height',
                            },
                          ),
                        ],
                      ),
                      Meta(
                        attributes: {
                          'expr:content':
                              '(data:blog.pageName ? data:blog.pageName : data:blog.title).escaped',
                          'property': 'og:image:alt',
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ///////
          BComment(children: [Text('[ Twitter Card ]')]),
          BComment(
            children: [
              Text(
                '[ Reference: developer.x.com/en/docs/twitter-for-websites/cards/overview/summary-card-with-large-image ]',
              ),
            ],
          ),
          BIf(
            cond: 'data:vars.metatags_twitterCard == "2px"',
            children: [
              Meta(
                attributes: {
                  'expr:content':
                      '(data:blog.pageName ? data:blog.pageName : data:blog.title).escaped',
                  'name': 'twitter:title',
                },
              ),
              Meta(
                attributes: {
                  'expr:content': 'data:blog.url.canonical',
                  'name': 'twitter:url',
                },
              ),
              BWith(
                varName: 'description',
                value:
                    'data:blog.metaDescription ? data:blog.metaDescription : (data:view.isSingleItem and data:post.snippet ? snippet(data:post.snippet, { length: 147, links: false, linebreaks: false, ellipsis: false }) : (data:blog.pageName ? data:blog.pageName : data:blog.title))',
                children: [
                  Meta(
                    attributes: {
                      'expr:content': 'data:description.escaped',
                      'name': 'twitter:description',
                    },
                  ),
                ],
              ),
              Meta(
                attributes: {
                  'content': 'summary_large_image',
                  'name': 'twitter:card',
                },
              ),
              Meta(
                attributes: {
                  'expr:content':
                      '(data:blog.pageName ? data:blog.pageName : data:blog.title).escaped',
                  'name': 'twitter:image:alt',
                },
              ),
              BWith(
                varName: 'imageUrl',
                value:
                    'data:view.isSingleItem and data:widgets.Blog.first.posts.first.featuredImage ? data:widgets.Blog.first.posts.first.featuredImage : snippet(data:skin.vars.twitter_image)',
                children: [
                  BWith(
                    varName: 'image',
                    value: 'resizeImage(data:imageUrl, 1280, "16:9")',
                    children: [
                      BComment(
                        children: [
                          Text(
                            "[ Ensure image url begins with valid protocol ]",
                          ),
                        ],
                      ),
                      Meta(
                        attributes: {
                          'expr:content':
                              '(data:image not contains "http://" and data:image not contains "https://" ? "https:" + data:image : data:image).escaped',
                          'name': 'twitter:image',
                        },
                      ),
                      BIf(
                        cond: 'data:image.width',
                        children: [
                          Meta(
                            attributes: {
                              'expr:content': 'data:image.width',
                              'name': 'twitter:image:width',
                            },
                          ),
                        ],
                      ),
                      BIf(
                        cond: 'data:image.height',
                        children: [
                          Meta(
                            attributes: {
                              'expr:content': 'data:image.height',
                              'name': 'twitter:image:height',
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
