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
-- Module      : Network.AWS.MediaLive.Types.Scte35ArchiveAllowedFlag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35ArchiveAllowedFlag
  ( Scte35ArchiveAllowedFlag
      ( ..,
        Scte35ArchiveAllowedFlagARCHIVEALLOWED,
        Scte35ArchiveAllowedFlagARCHIVENOTALLOWED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Corresponds to the archive_allowed parameter. A value of
-- ARCHIVE_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35
-- specification. If you include one of the \"restriction\" flags then you
-- must include all four of them.
newtype Scte35ArchiveAllowedFlag = Scte35ArchiveAllowedFlag'
  { fromScte35ArchiveAllowedFlag ::
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

pattern Scte35ArchiveAllowedFlagARCHIVEALLOWED :: Scte35ArchiveAllowedFlag
pattern Scte35ArchiveAllowedFlagARCHIVEALLOWED = Scte35ArchiveAllowedFlag' "ARCHIVE_ALLOWED"

pattern Scte35ArchiveAllowedFlagARCHIVENOTALLOWED :: Scte35ArchiveAllowedFlag
pattern Scte35ArchiveAllowedFlagARCHIVENOTALLOWED = Scte35ArchiveAllowedFlag' "ARCHIVE_NOT_ALLOWED"

{-# COMPLETE
  Scte35ArchiveAllowedFlagARCHIVEALLOWED,
  Scte35ArchiveAllowedFlagARCHIVENOTALLOWED,
  Scte35ArchiveAllowedFlag'
  #-}

instance Prelude.FromText Scte35ArchiveAllowedFlag where
  parser = Scte35ArchiveAllowedFlag' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35ArchiveAllowedFlag where
  toText (Scte35ArchiveAllowedFlag' x) = x

instance Prelude.Hashable Scte35ArchiveAllowedFlag

instance Prelude.NFData Scte35ArchiveAllowedFlag

instance Prelude.ToByteString Scte35ArchiveAllowedFlag

instance Prelude.ToQuery Scte35ArchiveAllowedFlag

instance Prelude.ToHeader Scte35ArchiveAllowedFlag

instance Prelude.ToJSON Scte35ArchiveAllowedFlag where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35ArchiveAllowedFlag where
  parseJSON = Prelude.parseJSONText "Scte35ArchiveAllowedFlag"
