import { ClubPage } from './app.po';

describe('club App', () => {
  let page: ClubPage;

  beforeEach(() => {
    page = new ClubPage();
  });

  it('should display welcome message', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('Welcome to app!!');
  });
});
