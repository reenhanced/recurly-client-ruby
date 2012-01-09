XML = {
  200 => {
    :index   => [
      <<EOR,
HTTP/1.1 200 OK
Link: \
<https://api.recurly.com/v2/resources?per_page=2&cursor=1234567890>; rel="next"
X-Records: 3

<resources>
<resource>
  <uuid>1</uuid>
</resource>
<resource>
  <uuid>2</uuid>
</resource>
</resources>
EOR
      <<EOR
HTTP/1.1 200 OK
Link: \
<https://api.recurly.com/v2/resources?per_page=2>; rel="start"
X-Records: 3

<resources>
<resource>
  <uuid>3</uuid>
</resource>
</resources>
EOR
    ],
    :show    => <<EOR,
HTTP/1.1 200 OK

<resource>
  <name>Spock</name>
</resource>
EOR
    :update  => <<EOR,
HTTP/1.1 200 OK

<resource>
  <name>Persistent Little Bug</name>
</resource>
EOR
    :destroy => <<EOR
HTTP/1.1 200 OK
Content-Length: 0
EOR
  },
  201 => <<EOR,
HTTP/1.1 201 Created
Content-Type: application/xml; charset=utf-8

<resource>
  <name>Persistent Little Bug</name>
</resource>
EOR
  422 => <<EOR,
HTTP/1.1 422 Unprocessable Entity
Content-Type: application/xml; charset=utf-8

<errors>
  <error field="resource.name" symbol="invalid_name">is a bad name</error>
</errors>
EOR
  404 => <<EOR,
HTTP/1.1 404 Not Found
Content-Type: application/xml; charset=utf-8

<error>
  <symbol>not_found</symbol>
  <description>Resource not found</description>
</error>
EOR
}
