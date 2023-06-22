module ApplicationHelper
    def organization_color(org)
        if org.color.present?
            org.color
        else
            "#000000"
        end
    end

    def organization_logo(org)
        if org.logo.attached?
            org.logo
        else
            "default.png"
        end
    end
end
