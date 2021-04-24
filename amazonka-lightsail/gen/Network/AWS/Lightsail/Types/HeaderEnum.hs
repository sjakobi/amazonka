{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.HeaderEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.HeaderEnum
  ( HeaderEnum
      ( ..,
        Accept,
        AcceptCharset,
        AcceptDatetime,
        AcceptEncoding,
        AcceptLanguage,
        Authorization,
        CloudFrontForwardedProto,
        CloudFrontIsDesktopViewer,
        CloudFrontIsMobileViewer,
        CloudFrontIsSmartTVViewer,
        CloudFrontIsTabletViewer,
        CloudFrontViewerCountry,
        Host,
        Origin,
        Referer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HeaderEnum = HeaderEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Accept :: HeaderEnum
pattern Accept = HeaderEnum' "Accept"

pattern AcceptCharset :: HeaderEnum
pattern AcceptCharset = HeaderEnum' "Accept-Charset"

pattern AcceptDatetime :: HeaderEnum
pattern AcceptDatetime = HeaderEnum' "Accept-Datetime"

pattern AcceptEncoding :: HeaderEnum
pattern AcceptEncoding = HeaderEnum' "Accept-Encoding"

pattern AcceptLanguage :: HeaderEnum
pattern AcceptLanguage = HeaderEnum' "Accept-Language"

pattern Authorization :: HeaderEnum
pattern Authorization = HeaderEnum' "Authorization"

pattern CloudFrontForwardedProto :: HeaderEnum
pattern CloudFrontForwardedProto = HeaderEnum' "CloudFront-Forwarded-Proto"

pattern CloudFrontIsDesktopViewer :: HeaderEnum
pattern CloudFrontIsDesktopViewer = HeaderEnum' "CloudFront-Is-Desktop-Viewer"

pattern CloudFrontIsMobileViewer :: HeaderEnum
pattern CloudFrontIsMobileViewer = HeaderEnum' "CloudFront-Is-Mobile-Viewer"

pattern CloudFrontIsSmartTVViewer :: HeaderEnum
pattern CloudFrontIsSmartTVViewer = HeaderEnum' "CloudFront-Is-SmartTV-Viewer"

pattern CloudFrontIsTabletViewer :: HeaderEnum
pattern CloudFrontIsTabletViewer = HeaderEnum' "CloudFront-Is-Tablet-Viewer"

pattern CloudFrontViewerCountry :: HeaderEnum
pattern CloudFrontViewerCountry = HeaderEnum' "CloudFront-Viewer-Country"

pattern Host :: HeaderEnum
pattern Host = HeaderEnum' "Host"

pattern Origin :: HeaderEnum
pattern Origin = HeaderEnum' "Origin"

pattern Referer :: HeaderEnum
pattern Referer = HeaderEnum' "Referer"

{-# COMPLETE
  Accept,
  AcceptCharset,
  AcceptDatetime,
  AcceptEncoding,
  AcceptLanguage,
  Authorization,
  CloudFrontForwardedProto,
  CloudFrontIsDesktopViewer,
  CloudFrontIsMobileViewer,
  CloudFrontIsSmartTVViewer,
  CloudFrontIsTabletViewer,
  CloudFrontViewerCountry,
  Host,
  Origin,
  Referer,
  HeaderEnum'
  #-}

instance FromText HeaderEnum where
  parser = (HeaderEnum' . mk) <$> takeText

instance ToText HeaderEnum where
  toText (HeaderEnum' ci) = original ci

instance Hashable HeaderEnum

instance NFData HeaderEnum

instance ToByteString HeaderEnum

instance ToQuery HeaderEnum

instance ToHeader HeaderEnum

instance ToJSON HeaderEnum where
  toJSON = toJSONText

instance FromJSON HeaderEnum where
  parseJSON = parseJSONText "HeaderEnum"
