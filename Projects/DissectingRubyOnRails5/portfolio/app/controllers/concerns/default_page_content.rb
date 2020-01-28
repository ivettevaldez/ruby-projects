module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Ivette Valdez | Portfolio"
        @seo_keywords = "Ivette Valdez portfolio"
    end
end