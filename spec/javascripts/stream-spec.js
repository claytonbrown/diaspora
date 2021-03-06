/*   Copyright (c) 2010, Diaspora Inc.  This file is
 *   licensed under the Affero General Public License version 3 or later.  See
 *   the COPYRIGHT file.
 */

describe("Stream", function() {

  describe("initialize", function() {
    it("attaches a click event to show_post_comments links", function() {
      spyOn($.fn, "delegate");
      Stream.initialize();
      expect($.fn.delegate).toHaveBeenCalledWith(
        "a.show_post_comments", "click", Stream.toggleComments);
    });
  });

  describe("toggleComments", function() {

    beforeEach(function() {
      $('#jasmine_content').html(
        '<li class="message" data-guid="4ceef7ba2367bc2e4d0001e9">' +
          '<div class="content">' +
            '<div class="info">' +
              '<a href="#" class="show_post_comments">show comments (0)</a>' +
            '</div>' +
            '<ul class="comments hidden" id="4ceef7ba2367bc2e4d0001e9">' +
              '<li class="comment show">' +
                '<form accept-charset="UTF-8" action="/comments" class="new_comment" data-remote="true" id="new_comment_on_4ceef7ba2367bc2e4d0001e9" method="post">' +
                  '<div style="margin:0;padding:0;display:inline">' +
                    '<p>' +
                      '<label for="comment_text_on_4ceef7ba2367bc2e4d0001e9">Comment</label>' +
                      '<textarea class="comment_box" id="comment_text_on_4ceef7ba2367bc2e4d0001e9" name="text" rows="1"></textarea>' +
                    '</p>' +
                    '<input id="post_id_on_4ceef7ba2367bc2e4d0001e9" name="post_id" type="hidden" value="4ceef7ba2367bc2e4d0001e9">' +
                    '<input class="comment_submit button" data-disable-with="Commenting..." id="comment_submit_4ceef7ba2367bc2e4d0001e9"  name="commit" type="submit" value="Comment">' +
                  '</div>' +
                '</form>' +
              '</li>' +
            '</ul>' +
          '</div>' +
        '</li>'
      );
    });
    it("toggles class hidden on the comment block", function () {
      expect($('ul.comments')).toHaveClass("hidden");
      $("a.show_post_comments").click();
      setTimeout(function() {
        expect($('ul.comments')).not.toHaveClass("hidden");
      }, 250);
    });
    it("changes the text on the show comments link", function() {
      $("a.show_post_comments").click();
      setTimeout(function() {
        expect($("a.show_post_comments").text()).toEqual("hide comments (0)");
      }, 250);
    })
  });
});
