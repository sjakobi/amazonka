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
-- Module      : Network.AWS.S3.Types.ArchiveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ArchiveStatus
  ( ArchiveStatus
      ( ..,
        ArchiveStatusARCHIVEACCESS,
        ArchiveStatusDEEPARCHIVEACCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ArchiveStatus = ArchiveStatus'
  { fromArchiveStatus ::
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

pattern ArchiveStatusARCHIVEACCESS :: ArchiveStatus
pattern ArchiveStatusARCHIVEACCESS = ArchiveStatus' "ARCHIVE_ACCESS"

pattern ArchiveStatusDEEPARCHIVEACCESS :: ArchiveStatus
pattern ArchiveStatusDEEPARCHIVEACCESS = ArchiveStatus' "DEEP_ARCHIVE_ACCESS"

{-# COMPLETE
  ArchiveStatusARCHIVEACCESS,
  ArchiveStatusDEEPARCHIVEACCESS,
  ArchiveStatus'
  #-}

instance Prelude.FromText ArchiveStatus where
  parser = ArchiveStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArchiveStatus where
  toText (ArchiveStatus' x) = x

instance Prelude.Hashable ArchiveStatus

instance Prelude.NFData ArchiveStatus

instance Prelude.ToByteString ArchiveStatus

instance Prelude.ToQuery ArchiveStatus

instance Prelude.ToHeader ArchiveStatus

instance Prelude.FromXML ArchiveStatus where
  parseXML = Prelude.parseXMLText "ArchiveStatus"
