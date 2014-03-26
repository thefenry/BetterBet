Confirmation.View = function(selectors) {
  this.selectors = selectors;
}

Confirmation.View.prototype = {
  showModal: function(goal) {
    $(document).foundation();
    $(this.selectors.goal).html(goal.title);
    $(this.selectors.modal).foundation('reveal', 'open');
  },
  hideModal: function() {
    $(this.selectors.modal).foundation('reveal', 'close');
  }
};