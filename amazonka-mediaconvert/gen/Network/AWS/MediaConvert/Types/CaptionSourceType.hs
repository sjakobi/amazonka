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
-- Module      : Network.AWS.MediaConvert.Types.CaptionSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CaptionSourceType
  ( CaptionSourceType
      ( ..,
        CaptionSourceTypeANCILLARY,
        CaptionSourceTypeDVBSUB,
        CaptionSourceTypeEMBEDDED,
        CaptionSourceTypeIMSC,
        CaptionSourceTypeNULLSOURCE,
        CaptionSourceTypeSCC,
        CaptionSourceTypeSCTE20,
        CaptionSourceTypeSMI,
        CaptionSourceTypeSMPTETT,
        CaptionSourceTypeSRT,
        CaptionSourceTypeSTL,
        CaptionSourceTypeTELETEXT,
        CaptionSourceTypeTTML
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Source (SourceType) to identify the format of your input captions.
-- The service cannot auto-detect caption format.
newtype CaptionSourceType = CaptionSourceType'
  { fromCaptionSourceType ::
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

pattern CaptionSourceTypeANCILLARY :: CaptionSourceType
pattern CaptionSourceTypeANCILLARY = CaptionSourceType' "ANCILLARY"

pattern CaptionSourceTypeDVBSUB :: CaptionSourceType
pattern CaptionSourceTypeDVBSUB = CaptionSourceType' "DVB_SUB"

pattern CaptionSourceTypeEMBEDDED :: CaptionSourceType
pattern CaptionSourceTypeEMBEDDED = CaptionSourceType' "EMBEDDED"

pattern CaptionSourceTypeIMSC :: CaptionSourceType
pattern CaptionSourceTypeIMSC = CaptionSourceType' "IMSC"

pattern CaptionSourceTypeNULLSOURCE :: CaptionSourceType
pattern CaptionSourceTypeNULLSOURCE = CaptionSourceType' "NULL_SOURCE"

pattern CaptionSourceTypeSCC :: CaptionSourceType
pattern CaptionSourceTypeSCC = CaptionSourceType' "SCC"

pattern CaptionSourceTypeSCTE20 :: CaptionSourceType
pattern CaptionSourceTypeSCTE20 = CaptionSourceType' "SCTE20"

pattern CaptionSourceTypeSMI :: CaptionSourceType
pattern CaptionSourceTypeSMI = CaptionSourceType' "SMI"

pattern CaptionSourceTypeSMPTETT :: CaptionSourceType
pattern CaptionSourceTypeSMPTETT = CaptionSourceType' "SMPTE_TT"

pattern CaptionSourceTypeSRT :: CaptionSourceType
pattern CaptionSourceTypeSRT = CaptionSourceType' "SRT"

pattern CaptionSourceTypeSTL :: CaptionSourceType
pattern CaptionSourceTypeSTL = CaptionSourceType' "STL"

pattern CaptionSourceTypeTELETEXT :: CaptionSourceType
pattern CaptionSourceTypeTELETEXT = CaptionSourceType' "TELETEXT"

pattern CaptionSourceTypeTTML :: CaptionSourceType
pattern CaptionSourceTypeTTML = CaptionSourceType' "TTML"

{-# COMPLETE
  CaptionSourceTypeANCILLARY,
  CaptionSourceTypeDVBSUB,
  CaptionSourceTypeEMBEDDED,
  CaptionSourceTypeIMSC,
  CaptionSourceTypeNULLSOURCE,
  CaptionSourceTypeSCC,
  CaptionSourceTypeSCTE20,
  CaptionSourceTypeSMI,
  CaptionSourceTypeSMPTETT,
  CaptionSourceTypeSRT,
  CaptionSourceTypeSTL,
  CaptionSourceTypeTELETEXT,
  CaptionSourceTypeTTML,
  CaptionSourceType'
  #-}

instance Prelude.FromText CaptionSourceType where
  parser = CaptionSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CaptionSourceType where
  toText (CaptionSourceType' x) = x

instance Prelude.Hashable CaptionSourceType

instance Prelude.NFData CaptionSourceType

instance Prelude.ToByteString CaptionSourceType

instance Prelude.ToQuery CaptionSourceType

instance Prelude.ToHeader CaptionSourceType

instance Prelude.ToJSON CaptionSourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CaptionSourceType where
  parseJSON = Prelude.parseJSONText "CaptionSourceType"
