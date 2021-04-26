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
-- Module      : Network.AWS.MediaStoreData.Types.UploadAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStoreData.Types.UploadAvailability
  ( UploadAvailability
      ( ..,
        UploadAvailabilitySTANDARD,
        UploadAvailabilitySTREAMING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UploadAvailability = UploadAvailability'
  { fromUploadAvailability ::
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

pattern UploadAvailabilitySTANDARD :: UploadAvailability
pattern UploadAvailabilitySTANDARD = UploadAvailability' "STANDARD"

pattern UploadAvailabilitySTREAMING :: UploadAvailability
pattern UploadAvailabilitySTREAMING = UploadAvailability' "STREAMING"

{-# COMPLETE
  UploadAvailabilitySTANDARD,
  UploadAvailabilitySTREAMING,
  UploadAvailability'
  #-}

instance Prelude.FromText UploadAvailability where
  parser = UploadAvailability' Prelude.<$> Prelude.takeText

instance Prelude.ToText UploadAvailability where
  toText (UploadAvailability' x) = x

instance Prelude.Hashable UploadAvailability

instance Prelude.NFData UploadAvailability

instance Prelude.ToByteString UploadAvailability

instance Prelude.ToQuery UploadAvailability

instance Prelude.ToHeader UploadAvailability

instance Prelude.ToJSON UploadAvailability where
  toJSON = Prelude.toJSONText
