module ApplicationHelper
    def organization_color(org)
        if org.color.present?
            org.color
        else
            "#000000"
        end
    end

    def organization_data
        OrganizationDatum.first
    end

    def organization_logo
        org = organization_data

        if org.logo.attached?
            org.logo
        else
            "logo.svg"
        end
    end

    def organization_color
        org = organization_data

        if org.color.present?
            org.color
        else
            "#F67F19"
        end
    end
end
