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
-- Module      : Network.AWS.CloudSearch.Types.OptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.OptionState
  ( OptionState
      ( ..,
        OptionStateActive,
        OptionStateFailedToValidate,
        OptionStateProcessing,
        OptionStateRequiresIndexDocuments
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The state of processing a change to an option. One of:
--
-- -   RequiresIndexDocuments: The option\'s latest value will not be
--     deployed until IndexDocuments has been called and indexing is
--     complete.
-- -   Processing: The option\'s latest value is in the process of being
--     activated.
-- -   Active: The option\'s latest value is fully deployed.
-- -   FailedToValidate: The option value is not compatible with the
--     domain\'s data and cannot be used to index the data. You must either
--     modify the option value or update or remove the incompatible
--     documents.
newtype OptionState = OptionState'
  { fromOptionState ::
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

pattern OptionStateActive :: OptionState
pattern OptionStateActive = OptionState' "Active"

pattern OptionStateFailedToValidate :: OptionState
pattern OptionStateFailedToValidate = OptionState' "FailedToValidate"

pattern OptionStateProcessing :: OptionState
pattern OptionStateProcessing = OptionState' "Processing"

pattern OptionStateRequiresIndexDocuments :: OptionState
pattern OptionStateRequiresIndexDocuments = OptionState' "RequiresIndexDocuments"

{-# COMPLETE
  OptionStateActive,
  OptionStateFailedToValidate,
  OptionStateProcessing,
  OptionStateRequiresIndexDocuments,
  OptionState'
  #-}

instance Prelude.FromText OptionState where
  parser = OptionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText OptionState where
  toText (OptionState' x) = x

instance Prelude.Hashable OptionState

instance Prelude.NFData OptionState

instance Prelude.ToByteString OptionState

instance Prelude.ToQuery OptionState

instance Prelude.ToHeader OptionState

instance Prelude.FromXML OptionState where
  parseXML = Prelude.parseXMLText "OptionState"
