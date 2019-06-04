require_relative 'Service_New'
require_relative 'ServiceProvider_New'


class DshsData
    include Singleton
    attr_reader :services

    def initialize
        # will be initialized with sample data, see data_structure
        @services = [
            Service.new("mind reading", 3, 2),
            Service.new("demonic exorcism", 4, 4),
            Service.new("potion therapy", 1, 3),
            Service.new("liver transplants", 2, 1)
        ]

        @service_providers = [
            ServiceProvider.new('jon', '1234567890', [@services[3], @services[4]],
                                {
                                     "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                     "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }),
            ServiceProvider.new('daenerys', '2345678901', [@services[0], @services[1]],
                                {
                                    "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }),
            ServiceProvider.new('arya', '3456789012', [@services[0], @services[1], @services[3], @services[4]],
                                {
                                    "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
                                    "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
                                }),

        ]
        #old service provider initialization data code
        # @service_providers = {
        #     "jon" => {
        #         "phone" => 1234567890,
        #         "services" => ["potion therapy", "liver transplants"],
        #         "availability" => {
        #                             "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
        #                         }
        #     },
        #     "daenerys" => {
        #         "phone" => 2345678901,
        #         "services" => ["mind reading", "demonic exorcism"],
        #         "availability" => {
        #                             "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "saturday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
        #                         }
        #     },
        #     "arya" => {
        #         "phone" => 3456789012,
        #         "services" => ["mind reading", "demonic exorcism", "potion therapy", "liver transplants"],
        #         "availability" => {
        #                             "monday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "tuesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "wednesday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "thursday" => [true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true],
        #                             "friday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "saturday" => [false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true],
        #                             "sunday" => [true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true]
        #                         }
        #     }
        # }
        @appointments = [
            {
                "date" => 18235,
                "start_time" => 9,
                "service_name" => "mind reading",
                "client_name" => "petyr baelish",
                "service_provider_name" => "arya",
            }
        ]
        @availability_blocks = [
            {
                "service_provider_name" => "arya",
                "date" => 18236,
                "start_time" => 0,
                "end_time" => 7,
                "is_available" => false,
            },
            {
                "service_provider_name" => "arya",
                "date" => 18237,
                "start_time" => 0,
                "end_time" => 3,
                "is_available" => true,
            }
        ]
    end

    attr_accessor :services, :service_providers, :appointments, :availability_blocks

    def add_service(name, price, duration)
        # code to add a service to services dictionary
        @services.push(Service.new(name,price,duration))
        puts "#{name} has successfully been added to services!".colorize(:green ).colorize( :background => :black)

        print_services()
    end

    def remove_service(name)
        # code to remove a service from services dictionary
        services.delete(get_service_by_name(name))
        puts "#{name} has successfully been removed from services".colorize(:green ).colorize( :background => :black)

        print_services()
    end

    def add_service_provider(name, phone, services, availability)
        # code to add a service provider to service_providers dictionary
        # old code
        # service_providers[name] = {
        #     "phone" => phone,
        #     "services" => services,
        #     "availability" => availability
        # }

        DshsData.instance.service_providers.each do |service_provider|
            if service_provider.name == name
                puts "#{name} has successfully been added to service providers!".colorize(:green ).colorize( :background => :black)
            else
                new_provider = ServiceProvider.new(name, phone, services, availability)
                DshsData.instance.service_providers.push(new_provider)
            end
        end

        print_service_providers()
    end

    def remove_service_provider(name)
        # code to remove a service provider from service_providers dictionary
        service_providers.delete(name)
        puts "#{name} has successfully been removed from service providers".colorize(:green ).colorize( :background => :black)

        print_service_providers()
    end

    def create_appointment(date, start_time, service_name, service_provider_name, client_name)
        # code to add an appointment to the appointments array
        app_new = {
            "date" => date,
            "start_time" => start_time,
            "service_name" => service_name,
            "service_provider_name" => service_provider_name,
            "client_name" => client_name
        }
        @appointments << app_new
        puts 'Your appointment has been scheduled!'.colorize(:green ).colorize( :background => :black)

        print_appointments()
    end

    def add_availability(name, date, start_time, end_time, is_available)
        app_new = {
            "name" => name,
            "date" => date,
            "start_time" => start_time,
            "end_time" => end_time,
            "is_available" => is_available,
        }
        @availability_blocks << app_new
        puts @availability_blocks.inspect.yellow
        # print_availability_blocks()
    end

    def remove_availability(name,requested_time, start_time, end_time)
        @availability_blocks.delete(name)
        @availability_blocks.delete(requested_time)
        @availability_blocks.delete(start_time)
        @availability_blocks.delete(end_time)
        remove_instance_variable(name) #hopefully gets rid of the entire object
        puts @availability_blocks.inspect.yellow
        # print_availability_blocks()
    end

    def get_all_service_names
        service_names = []
        @service.each do |service|
            service_names.push(service.name)
        end
        service_names
    end

    def get_service_by_name(service_name)
        @service.each do |service|
            if service.name == service_name
                return service
            else
                return nil
            end
        end
    end
end