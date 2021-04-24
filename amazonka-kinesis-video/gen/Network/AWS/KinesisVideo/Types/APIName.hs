{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.APIName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.APIName
  ( APIName
      ( ..,
        GetClip,
        GetDashStreamingSessionURL,
        GetHlsStreamingSessionURL,
        GetMedia,
        GetMediaForFragmentList,
        ListFragments,
        PutMedia
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APIName = APIName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern GetClip :: APIName
pattern GetClip = APIName' "GET_CLIP"

pattern GetDashStreamingSessionURL :: APIName
pattern GetDashStreamingSessionURL = APIName' "GET_DASH_STREAMING_SESSION_URL"

pattern GetHlsStreamingSessionURL :: APIName
pattern GetHlsStreamingSessionURL = APIName' "GET_HLS_STREAMING_SESSION_URL"

pattern GetMedia :: APIName
pattern GetMedia = APIName' "GET_MEDIA"

pattern GetMediaForFragmentList :: APIName
pattern GetMediaForFragmentList = APIName' "GET_MEDIA_FOR_FRAGMENT_LIST"

pattern ListFragments :: APIName
pattern ListFragments = APIName' "LIST_FRAGMENTS"

pattern PutMedia :: APIName
pattern PutMedia = APIName' "PUT_MEDIA"

{-# COMPLETE
  GetClip,
  GetDashStreamingSessionURL,
  GetHlsStreamingSessionURL,
  GetMedia,
  GetMediaForFragmentList,
  ListFragments,
  PutMedia,
  APIName'
  #-}

instance FromText APIName where
  parser = (APIName' . mk) <$> takeText

instance ToText APIName where
  toText (APIName' ci) = original ci

instance Hashable APIName

instance NFData APIName

instance ToByteString APIName

instance ToQuery APIName

instance ToHeader APIName

instance ToJSON APIName where
  toJSON = toJSONText
