import { CrowdFundPage } from './app.po';

describe('crowd-fund App', () => {
  let page: CrowdFundPage;

  beforeEach(() => {
    page = new CrowdFundPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
