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
-- Module      : Network.AWS.ElasticSearch.Types.OptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.OptionState
  ( OptionState
      ( ..,
        OptionStateActive,
        OptionStateProcessing,
        OptionStateRequiresIndexDocuments
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The state of a requested change. One of the following:
--
-- -   Processing: The request change is still in-process.
-- -   Active: The request change is processed and deployed to the
--     Elasticsearch domain.
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

pattern OptionStateProcessing :: OptionState
pattern OptionStateProcessing = OptionState' "Processing"

pattern OptionStateRequiresIndexDocuments :: OptionState
pattern OptionStateRequiresIndexDocuments = OptionState' "RequiresIndexDocuments"

{-# COMPLETE
  OptionStateActive,
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

instance Prelude.FromJSON OptionState where
  parseJSON = Prelude.parseJSONText "OptionState"
