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
-- Module      : Network.AWS.KinesisVideo.Types.APIName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.APIName
  ( APIName
      ( ..,
        APINameGETCLIP,
        APINameGETDASHSTREAMINGSESSIONURL,
        APINameGETHLSSTREAMINGSESSIONURL,
        APINameGETMEDIA,
        APINameGETMEDIAFORFRAGMENTLIST,
        APINameLISTFRAGMENTS,
        APINamePUTMEDIA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype APIName = APIName'
  { fromAPIName ::
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

pattern APINameGETCLIP :: APIName
pattern APINameGETCLIP = APIName' "GET_CLIP"

pattern APINameGETDASHSTREAMINGSESSIONURL :: APIName
pattern APINameGETDASHSTREAMINGSESSIONURL = APIName' "GET_DASH_STREAMING_SESSION_URL"

pattern APINameGETHLSSTREAMINGSESSIONURL :: APIName
pattern APINameGETHLSSTREAMINGSESSIONURL = APIName' "GET_HLS_STREAMING_SESSION_URL"

pattern APINameGETMEDIA :: APIName
pattern APINameGETMEDIA = APIName' "GET_MEDIA"

pattern APINameGETMEDIAFORFRAGMENTLIST :: APIName
pattern APINameGETMEDIAFORFRAGMENTLIST = APIName' "GET_MEDIA_FOR_FRAGMENT_LIST"

pattern APINameLISTFRAGMENTS :: APIName
pattern APINameLISTFRAGMENTS = APIName' "LIST_FRAGMENTS"

pattern APINamePUTMEDIA :: APIName
pattern APINamePUTMEDIA = APIName' "PUT_MEDIA"

{-# COMPLETE
  APINameGETCLIP,
  APINameGETDASHSTREAMINGSESSIONURL,
  APINameGETHLSSTREAMINGSESSIONURL,
  APINameGETMEDIA,
  APINameGETMEDIAFORFRAGMENTLIST,
  APINameLISTFRAGMENTS,
  APINamePUTMEDIA,
  APIName'
  #-}

instance Prelude.FromText APIName where
  parser = APIName' Prelude.<$> Prelude.takeText

instance Prelude.ToText APIName where
  toText (APIName' x) = x

instance Prelude.Hashable APIName

instance Prelude.NFData APIName

instance Prelude.ToByteString APIName

instance Prelude.ToQuery APIName

instance Prelude.ToHeader APIName

instance Prelude.ToJSON APIName where
  toJSON = Prelude.toJSONText
