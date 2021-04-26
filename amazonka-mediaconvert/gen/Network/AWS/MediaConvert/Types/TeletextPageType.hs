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
-- Module      : Network.AWS.MediaConvert.Types.TeletextPageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TeletextPageType
  ( TeletextPageType
      ( ..,
        TeletextPageTypePAGETYPEADDLINFO,
        TeletextPageTypePAGETYPEHEARINGIMPAIREDSUBTITLE,
        TeletextPageTypePAGETYPEINITIAL,
        TeletextPageTypePAGETYPEPROGRAMSCHEDULE,
        TeletextPageTypePAGETYPESUBTITLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A page type as defined in the standard ETSI EN 300 468, Table 94
newtype TeletextPageType = TeletextPageType'
  { fromTeletextPageType ::
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

pattern TeletextPageTypePAGETYPEADDLINFO :: TeletextPageType
pattern TeletextPageTypePAGETYPEADDLINFO = TeletextPageType' "PAGE_TYPE_ADDL_INFO"

pattern TeletextPageTypePAGETYPEHEARINGIMPAIREDSUBTITLE :: TeletextPageType
pattern TeletextPageTypePAGETYPEHEARINGIMPAIREDSUBTITLE = TeletextPageType' "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"

pattern TeletextPageTypePAGETYPEINITIAL :: TeletextPageType
pattern TeletextPageTypePAGETYPEINITIAL = TeletextPageType' "PAGE_TYPE_INITIAL"

pattern TeletextPageTypePAGETYPEPROGRAMSCHEDULE :: TeletextPageType
pattern TeletextPageTypePAGETYPEPROGRAMSCHEDULE = TeletextPageType' "PAGE_TYPE_PROGRAM_SCHEDULE"

pattern TeletextPageTypePAGETYPESUBTITLE :: TeletextPageType
pattern TeletextPageTypePAGETYPESUBTITLE = TeletextPageType' "PAGE_TYPE_SUBTITLE"

{-# COMPLETE
  TeletextPageTypePAGETYPEADDLINFO,
  TeletextPageTypePAGETYPEHEARINGIMPAIREDSUBTITLE,
  TeletextPageTypePAGETYPEINITIAL,
  TeletextPageTypePAGETYPEPROGRAMSCHEDULE,
  TeletextPageTypePAGETYPESUBTITLE,
  TeletextPageType'
  #-}

instance Prelude.FromText TeletextPageType where
  parser = TeletextPageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TeletextPageType where
  toText (TeletextPageType' x) = x

instance Prelude.Hashable TeletextPageType

instance Prelude.NFData TeletextPageType

instance Prelude.ToByteString TeletextPageType

instance Prelude.ToQuery TeletextPageType

instance Prelude.ToHeader TeletextPageType

instance Prelude.ToJSON TeletextPageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TeletextPageType where
  parseJSON = Prelude.parseJSONText "TeletextPageType"
