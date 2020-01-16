import scrapy

class BlogSpider(scrapy.Spider):
    name = 'quotestoscrape'

    def start_requests(self):
        urls = [
            'http://quotes.toscrape.com/'
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)


    def parse(self, response):
        for quote in response.css('div.quote'):
            yield {
                'text': quote.css('span.text::text').extract_first(),
                'author': quote.xpath('span/small/text()').extract_first(),
            }