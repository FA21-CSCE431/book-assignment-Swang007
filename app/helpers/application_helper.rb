module ApplicationHelper
    def page_title(separator = " - ")
        ['BookCollection', content_for(:title)].compact.join(separator)
    end

    def page_heading(title)
        content_for(:title){ title }
        content_tag(:h1, title)
    end
end
