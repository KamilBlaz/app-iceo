{{- define "configmap.name" }}
{{- printf "%s-config" .Release.Name }}
{{- end }}

{{- define "network-policy.name" }}
{{- printf "%s-policy" .Release.Name }}
{{- end }}

{{- define "commonLabels" }}
app: {{ .Release.Name }}
{{- end }}

{{- define "service.name" }}
{{- .Release.Name }}
{{- end }}

{{- define "ingress.name" }}
{{- .Release.Name }}
{{- end }}
