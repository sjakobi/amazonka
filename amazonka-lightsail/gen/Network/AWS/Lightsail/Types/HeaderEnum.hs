{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        HeaderEnumAccept,
        HeaderEnumAcceptCharset,
        HeaderEnumAcceptDatetime,
        HeaderEnumAcceptEncoding,
        HeaderEnumAcceptLanguage,
        HeaderEnumAuthorization,
        HeaderEnumCloudFrontForwardedProto,
        HeaderEnumCloudFrontIsDesktopViewer,
        HeaderEnumCloudFrontIsMobileViewer,
        HeaderEnumCloudFrontIsSmartTVViewer,
        HeaderEnumCloudFrontIsTabletViewer,
        HeaderEnumCloudFrontViewerCountry,
        HeaderEnumHost,
        HeaderEnumOrigin,
        HeaderEnumReferer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HeaderEnum = HeaderEnum'
  { fromHeaderEnum ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern HeaderEnumAccept :: HeaderEnum
pattern HeaderEnumAccept = HeaderEnum' "Accept"

pattern HeaderEnumAcceptCharset :: HeaderEnum
pattern HeaderEnumAcceptCharset = HeaderEnum' "Accept-Charset"

pattern HeaderEnumAcceptDatetime :: HeaderEnum
pattern HeaderEnumAcceptDatetime = HeaderEnum' "Accept-Datetime"

pattern HeaderEnumAcceptEncoding :: HeaderEnum
pattern HeaderEnumAcceptEncoding = HeaderEnum' "Accept-Encoding"

pattern HeaderEnumAcceptLanguage :: HeaderEnum
pattern HeaderEnumAcceptLanguage = HeaderEnum' "Accept-Language"

pattern HeaderEnumAuthorization :: HeaderEnum
pattern HeaderEnumAuthorization = HeaderEnum' "Authorization"

pattern HeaderEnumCloudFrontForwardedProto :: HeaderEnum
pattern HeaderEnumCloudFrontForwardedProto = HeaderEnum' "CloudFront-Forwarded-Proto"

pattern HeaderEnumCloudFrontIsDesktopViewer :: HeaderEnum
pattern HeaderEnumCloudFrontIsDesktopViewer = HeaderEnum' "CloudFront-Is-Desktop-Viewer"

pattern HeaderEnumCloudFrontIsMobileViewer :: HeaderEnum
pattern HeaderEnumCloudFrontIsMobileViewer = HeaderEnum' "CloudFront-Is-Mobile-Viewer"

pattern HeaderEnumCloudFrontIsSmartTVViewer :: HeaderEnum
pattern HeaderEnumCloudFrontIsSmartTVViewer = HeaderEnum' "CloudFront-Is-SmartTV-Viewer"

pattern HeaderEnumCloudFrontIsTabletViewer :: HeaderEnum
pattern HeaderEnumCloudFrontIsTabletViewer = HeaderEnum' "CloudFront-Is-Tablet-Viewer"

pattern HeaderEnumCloudFrontViewerCountry :: HeaderEnum
pattern HeaderEnumCloudFrontViewerCountry = HeaderEnum' "CloudFront-Viewer-Country"

pattern HeaderEnumHost :: HeaderEnum
pattern HeaderEnumHost = HeaderEnum' "Host"

pattern HeaderEnumOrigin :: HeaderEnum
pattern HeaderEnumOrigin = HeaderEnum' "Origin"

pattern HeaderEnumReferer :: HeaderEnum
pattern HeaderEnumReferer = HeaderEnum' "Referer"

{-# COMPLETE
  HeaderEnumAccept,
  HeaderEnumAcceptCharset,
  HeaderEnumAcceptDatetime,
  HeaderEnumAcceptEncoding,
  HeaderEnumAcceptLanguage,
  HeaderEnumAuthorization,
  HeaderEnumCloudFrontForwardedProto,
  HeaderEnumCloudFrontIsDesktopViewer,
  HeaderEnumCloudFrontIsMobileViewer,
  HeaderEnumCloudFrontIsSmartTVViewer,
  HeaderEnumCloudFrontIsTabletViewer,
  HeaderEnumCloudFrontViewerCountry,
  HeaderEnumHost,
  HeaderEnumOrigin,
  HeaderEnumReferer,
  HeaderEnum'
  #-}

instance Prelude.FromText HeaderEnum where
  parser = HeaderEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText HeaderEnum where
  toText (HeaderEnum' x) = x

instance Prelude.Hashable HeaderEnum

instance Prelude.NFData HeaderEnum

instance Prelude.ToByteString HeaderEnum

instance Prelude.ToQuery HeaderEnum

instance Prelude.ToHeader HeaderEnum

instance Prelude.ToJSON HeaderEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HeaderEnum where
  parseJSON = Prelude.parseJSONText "HeaderEnum"
