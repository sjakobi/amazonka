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
-- Module      : Network.AWS.Redshift.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SourceType
  ( SourceType
      ( ..,
        SourceTypeCluster,
        SourceTypeClusterParameterGroup,
        SourceTypeClusterSecurityGroup,
        SourceTypeClusterSnapshot,
        SourceTypeScheduledAction
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype SourceType = SourceType'
  { fromSourceType ::
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

pattern SourceTypeCluster :: SourceType
pattern SourceTypeCluster = SourceType' "cluster"

pattern SourceTypeClusterParameterGroup :: SourceType
pattern SourceTypeClusterParameterGroup = SourceType' "cluster-parameter-group"

pattern SourceTypeClusterSecurityGroup :: SourceType
pattern SourceTypeClusterSecurityGroup = SourceType' "cluster-security-group"

pattern SourceTypeClusterSnapshot :: SourceType
pattern SourceTypeClusterSnapshot = SourceType' "cluster-snapshot"

pattern SourceTypeScheduledAction :: SourceType
pattern SourceTypeScheduledAction = SourceType' "scheduled-action"

{-# COMPLETE
  SourceTypeCluster,
  SourceTypeClusterParameterGroup,
  SourceTypeClusterSecurityGroup,
  SourceTypeClusterSnapshot,
  SourceTypeScheduledAction,
  SourceType'
  #-}

instance Prelude.FromText SourceType where
  parser = SourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SourceType where
  toText (SourceType' x) = x

instance Prelude.Hashable SourceType

instance Prelude.NFData SourceType

instance Prelude.ToByteString SourceType

instance Prelude.ToQuery SourceType

instance Prelude.ToHeader SourceType

instance Prelude.FromXML SourceType where
  parseXML = Prelude.parseXMLText "SourceType"
