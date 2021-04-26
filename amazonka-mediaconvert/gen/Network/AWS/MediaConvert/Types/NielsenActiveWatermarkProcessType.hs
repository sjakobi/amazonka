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
-- Module      : Network.AWS.MediaConvert.Types.NielsenActiveWatermarkProcessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenActiveWatermarkProcessType
  ( NielsenActiveWatermarkProcessType
      ( ..,
        NielsenActiveWatermarkProcessTypeCBET,
        NielsenActiveWatermarkProcessTypeNAES2ANDNW,
        NielsenActiveWatermarkProcessTypeNAES2ANDNWANDCBET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the type of Nielsen watermarks that you want in your outputs.
-- When you choose NAES 2 and NW (NAES2_AND_NW), you must provide a value
-- for the setting SID (sourceId). When you choose CBET (CBET), you must
-- provide a value for the setting CSID (cbetSourceId). When you choose
-- NAES 2, NW, and CBET (NAES2_AND_NW_AND_CBET), you must provide values
-- for both of these settings.
newtype NielsenActiveWatermarkProcessType = NielsenActiveWatermarkProcessType'
  { fromNielsenActiveWatermarkProcessType ::
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

pattern NielsenActiveWatermarkProcessTypeCBET :: NielsenActiveWatermarkProcessType
pattern NielsenActiveWatermarkProcessTypeCBET = NielsenActiveWatermarkProcessType' "CBET"

pattern NielsenActiveWatermarkProcessTypeNAES2ANDNW :: NielsenActiveWatermarkProcessType
pattern NielsenActiveWatermarkProcessTypeNAES2ANDNW = NielsenActiveWatermarkProcessType' "NAES2_AND_NW"

pattern NielsenActiveWatermarkProcessTypeNAES2ANDNWANDCBET :: NielsenActiveWatermarkProcessType
pattern NielsenActiveWatermarkProcessTypeNAES2ANDNWANDCBET = NielsenActiveWatermarkProcessType' "NAES2_AND_NW_AND_CBET"

{-# COMPLETE
  NielsenActiveWatermarkProcessTypeCBET,
  NielsenActiveWatermarkProcessTypeNAES2ANDNW,
  NielsenActiveWatermarkProcessTypeNAES2ANDNWANDCBET,
  NielsenActiveWatermarkProcessType'
  #-}

instance Prelude.FromText NielsenActiveWatermarkProcessType where
  parser = NielsenActiveWatermarkProcessType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NielsenActiveWatermarkProcessType where
  toText (NielsenActiveWatermarkProcessType' x) = x

instance Prelude.Hashable NielsenActiveWatermarkProcessType

instance Prelude.NFData NielsenActiveWatermarkProcessType

instance Prelude.ToByteString NielsenActiveWatermarkProcessType

instance Prelude.ToQuery NielsenActiveWatermarkProcessType

instance Prelude.ToHeader NielsenActiveWatermarkProcessType

instance Prelude.ToJSON NielsenActiveWatermarkProcessType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NielsenActiveWatermarkProcessType where
  parseJSON = Prelude.parseJSONText "NielsenActiveWatermarkProcessType"
