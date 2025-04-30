return {
  {
    "rmanocha/linear-nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "stevearc/dressing.nvim",
    },
    keys = {
      {
        "<leader>mm",
        function()
          require("linear-nvim").show_assigned_issues()
        end,
        desc = "Linear: Show Assigned Issues",
      },
      {
        "<leader>mc",
        function()
          require("linear-nvim").create_issue()
        end,
        desc = "Linear: Create Issue",
        mode = { "n", "v" },
      },
      {
        "<leader>ms",
        function()
          require("linear-nvim").show_issue_details()
        end,
        desc = "Linear: Show Issue Details",
      },
    },
  },
}
