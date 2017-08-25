##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'AddOnResult' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .add_on_results("XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults/XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "reference_sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "completed",
          "add_on_sid": "XBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "add_on_configuration_sid": "XEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Wed, 01 Sep 2010 15:15:41 +0000",
          "date_updated": "Wed, 01 Sep 2010 15:15:41 +0000",
          "date_completed": "Wed, 01 Sep 2010 15:15:41 +0000",
          "subresource_uris": {
              "payloads": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults/XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payloads.json"
          }
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .add_on_results("XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .add_on_results.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "add_on_results": [
              {
                  "sid": "XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "reference_sid": "REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "completed",
                  "add_on_sid": "XBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "add_on_configuration_sid": "XEaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Wed, 01 Sep 2010 15:15:41 +0000",
                  "date_updated": "Wed, 01 Sep 2010 15:15:41 +0000",
                  "date_completed": "Wed, 01 Sep 2010 15:15:41 +0000",
                  "subresource_uris": {
                      "payloads": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults/XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Payloads.json"
                  }
              }
          ],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .add_on_results.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults.json?PageSize=50&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "add_on_results": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults.json?PageSize=50&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .add_on_results.list()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .add_on_results("XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Recordings/REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AddOnResults/XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .recordings("REaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .add_on_results("XRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end
end