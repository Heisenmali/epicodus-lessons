import { CraigslistPage } from './app.po';

describe('craigslist App', () => {
  let page: CraigslistPage;

  beforeEach(() => {
    page = new CraigslistPage();
  });

  it('should display welcome message', done => {
    page.navigateTo();
    page.getParagraphText()
      .then(msg => expect(msg).toEqual('Welcome to app!!'))
      .then(done, done.fail);
  });
});
