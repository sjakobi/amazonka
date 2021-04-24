{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.RuleCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.RuleCondition where

import Network.AWS.ELBv2.Types.HTTPHeaderConditionConfig
import Network.AWS.ELBv2.Types.HTTPRequestMethodConditionConfig
import Network.AWS.ELBv2.Types.HostHeaderConditionConfig
import Network.AWS.ELBv2.Types.PathPatternConditionConfig
import Network.AWS.ELBv2.Types.QueryStringConditionConfig
import Network.AWS.ELBv2.Types.SourceIPConditionConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a condition for a rule.
--
--
-- Each rule can optionally include up to one of each of the following conditions: @http-request-method@ , @host-header@ , @path-pattern@ , and @source-ip@ . Each rule can also optionally include one or more of each of the following conditions: @http-header@ and @query-string@ .
--
--
-- /See:/ 'ruleCondition' smart constructor.
data RuleCondition = RuleCondition'
  { _rcPathPatternConfig ::
      !(Maybe PathPatternConditionConfig),
    _rcHTTPRequestMethodConfig ::
      !(Maybe HTTPRequestMethodConditionConfig),
    _rcValues :: !(Maybe [Text]),
    _rcSourceIPConfig ::
      !(Maybe SourceIPConditionConfig),
    _rcHTTPHeaderConfig ::
      !(Maybe HTTPHeaderConditionConfig),
    _rcHostHeaderConfig ::
      !(Maybe HostHeaderConditionConfig),
    _rcQueryStringConfig ::
      !(Maybe QueryStringConditionConfig),
    _rcField :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RuleCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcPathPatternConfig' - Information for a path pattern condition. Specify only when @Field@ is @path-pattern@ .
--
-- * 'rcHTTPRequestMethodConfig' - Information for an HTTP method condition. Specify only when @Field@ is @http-request-method@ .
--
-- * 'rcValues' - The condition value. Specify only when @Field@ is @host-header@ or @path-pattern@ . Alternatively, to specify multiple host names or multiple path patterns, use @HostHeaderConfig@ or @PathPatternConfig@ . If @Field@ is @host-header@ and you are not using @HostHeaderConfig@ , you can specify a single host name (for example, my.example.com) in @Values@ . A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters.     * A-Z, a-z, 0-9     * - .     * * (matches 0 or more characters)     * ? (matches exactly 1 character) If @Field@ is @path-pattern@ and you are not using @PathPatternConfig@ , you can specify a single path pattern (for example, /img/*) in @Values@ . A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters.     * A-Z, a-z, 0-9     * _ - . $ / ~ " ' @ : +     * & (using &amp;)     * * (matches 0 or more characters)     * ? (matches exactly 1 character)
--
-- * 'rcSourceIPConfig' - Information for a source IP condition. Specify only when @Field@ is @source-ip@ .
--
-- * 'rcHTTPHeaderConfig' - Information for an HTTP header condition. Specify only when @Field@ is @http-header@ .
--
-- * 'rcHostHeaderConfig' - Information for a host header condition. Specify only when @Field@ is @host-header@ .
--
-- * 'rcQueryStringConfig' - Information for a query string condition. Specify only when @Field@ is @query-string@ .
--
-- * 'rcField' - The field in the HTTP request. The following are the possible values:     * @http-header@      * @http-request-method@      * @host-header@      * @path-pattern@      * @query-string@      * @source-ip@
ruleCondition ::
  RuleCondition
ruleCondition =
  RuleCondition'
    { _rcPathPatternConfig = Nothing,
      _rcHTTPRequestMethodConfig = Nothing,
      _rcValues = Nothing,
      _rcSourceIPConfig = Nothing,
      _rcHTTPHeaderConfig = Nothing,
      _rcHostHeaderConfig = Nothing,
      _rcQueryStringConfig = Nothing,
      _rcField = Nothing
    }

-- | Information for a path pattern condition. Specify only when @Field@ is @path-pattern@ .
rcPathPatternConfig :: Lens' RuleCondition (Maybe PathPatternConditionConfig)
rcPathPatternConfig = lens _rcPathPatternConfig (\s a -> s {_rcPathPatternConfig = a})

-- | Information for an HTTP method condition. Specify only when @Field@ is @http-request-method@ .
rcHTTPRequestMethodConfig :: Lens' RuleCondition (Maybe HTTPRequestMethodConditionConfig)
rcHTTPRequestMethodConfig = lens _rcHTTPRequestMethodConfig (\s a -> s {_rcHTTPRequestMethodConfig = a})

-- | The condition value. Specify only when @Field@ is @host-header@ or @path-pattern@ . Alternatively, to specify multiple host names or multiple path patterns, use @HostHeaderConfig@ or @PathPatternConfig@ . If @Field@ is @host-header@ and you are not using @HostHeaderConfig@ , you can specify a single host name (for example, my.example.com) in @Values@ . A host name is case insensitive, can be up to 128 characters in length, and can contain any of the following characters.     * A-Z, a-z, 0-9     * - .     * * (matches 0 or more characters)     * ? (matches exactly 1 character) If @Field@ is @path-pattern@ and you are not using @PathPatternConfig@ , you can specify a single path pattern (for example, /img/*) in @Values@ . A path pattern is case-sensitive, can be up to 128 characters in length, and can contain any of the following characters.     * A-Z, a-z, 0-9     * _ - . $ / ~ " ' @ : +     * & (using &amp;)     * * (matches 0 or more characters)     * ? (matches exactly 1 character)
rcValues :: Lens' RuleCondition [Text]
rcValues = lens _rcValues (\s a -> s {_rcValues = a}) . _Default . _Coerce

-- | Information for a source IP condition. Specify only when @Field@ is @source-ip@ .
rcSourceIPConfig :: Lens' RuleCondition (Maybe SourceIPConditionConfig)
rcSourceIPConfig = lens _rcSourceIPConfig (\s a -> s {_rcSourceIPConfig = a})

-- | Information for an HTTP header condition. Specify only when @Field@ is @http-header@ .
rcHTTPHeaderConfig :: Lens' RuleCondition (Maybe HTTPHeaderConditionConfig)
rcHTTPHeaderConfig = lens _rcHTTPHeaderConfig (\s a -> s {_rcHTTPHeaderConfig = a})

-- | Information for a host header condition. Specify only when @Field@ is @host-header@ .
rcHostHeaderConfig :: Lens' RuleCondition (Maybe HostHeaderConditionConfig)
rcHostHeaderConfig = lens _rcHostHeaderConfig (\s a -> s {_rcHostHeaderConfig = a})

-- | Information for a query string condition. Specify only when @Field@ is @query-string@ .
rcQueryStringConfig :: Lens' RuleCondition (Maybe QueryStringConditionConfig)
rcQueryStringConfig = lens _rcQueryStringConfig (\s a -> s {_rcQueryStringConfig = a})

-- | The field in the HTTP request. The following are the possible values:     * @http-header@      * @http-request-method@      * @host-header@      * @path-pattern@      * @query-string@      * @source-ip@
rcField :: Lens' RuleCondition (Maybe Text)
rcField = lens _rcField (\s a -> s {_rcField = a})

instance FromXML RuleCondition where
  parseXML x =
    RuleCondition'
      <$> (x .@? "PathPatternConfig")
      <*> (x .@? "HttpRequestMethodConfig")
      <*> ( x .@? "Values" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "SourceIpConfig")
      <*> (x .@? "HttpHeaderConfig")
      <*> (x .@? "HostHeaderConfig")
      <*> (x .@? "QueryStringConfig")
      <*> (x .@? "Field")

instance Hashable RuleCondition

instance NFData RuleCondition

instance ToQuery RuleCondition where
  toQuery RuleCondition' {..} =
    mconcat
      [ "PathPatternConfig" =: _rcPathPatternConfig,
        "HttpRequestMethodConfig"
          =: _rcHTTPRequestMethodConfig,
        "Values"
          =: toQuery (toQueryList "member" <$> _rcValues),
        "SourceIpConfig" =: _rcSourceIPConfig,
        "HttpHeaderConfig" =: _rcHTTPHeaderConfig,
        "HostHeaderConfig" =: _rcHostHeaderConfig,
        "QueryStringConfig" =: _rcQueryStringConfig,
        "Field" =: _rcField
      ]
