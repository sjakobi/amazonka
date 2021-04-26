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
-- Module      : Network.AWS.CloudWatch.Types.HistoryItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.HistoryItemType
  ( HistoryItemType
      ( ..,
        HistoryItemTypeAction,
        HistoryItemTypeConfigurationUpdate,
        HistoryItemTypeStateUpdate
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HistoryItemType = HistoryItemType'
  { fromHistoryItemType ::
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

pattern HistoryItemTypeAction :: HistoryItemType
pattern HistoryItemTypeAction = HistoryItemType' "Action"

pattern HistoryItemTypeConfigurationUpdate :: HistoryItemType
pattern HistoryItemTypeConfigurationUpdate = HistoryItemType' "ConfigurationUpdate"

pattern HistoryItemTypeStateUpdate :: HistoryItemType
pattern HistoryItemTypeStateUpdate = HistoryItemType' "StateUpdate"

{-# COMPLETE
  HistoryItemTypeAction,
  HistoryItemTypeConfigurationUpdate,
  HistoryItemTypeStateUpdate,
  HistoryItemType'
  #-}

instance Prelude.FromText HistoryItemType where
  parser = HistoryItemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HistoryItemType where
  toText (HistoryItemType' x) = x

instance Prelude.Hashable HistoryItemType

instance Prelude.NFData HistoryItemType

instance Prelude.ToByteString HistoryItemType

instance Prelude.ToQuery HistoryItemType

instance Prelude.ToHeader HistoryItemType

instance Prelude.FromXML HistoryItemType where
  parseXML = Prelude.parseXMLText "HistoryItemType"
