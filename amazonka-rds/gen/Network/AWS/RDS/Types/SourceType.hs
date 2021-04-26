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
-- Module      : Network.AWS.RDS.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.SourceType
  ( SourceType
      ( ..,
        SourceTypeDbCluster,
        SourceTypeDbClusterSnapshot,
        SourceTypeDbInstance,
        SourceTypeDbParameterGroup,
        SourceTypeDbSecurityGroup,
        SourceTypeDbSnapshot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

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

pattern SourceTypeDbCluster :: SourceType
pattern SourceTypeDbCluster = SourceType' "db-cluster"

pattern SourceTypeDbClusterSnapshot :: SourceType
pattern SourceTypeDbClusterSnapshot = SourceType' "db-cluster-snapshot"

pattern SourceTypeDbInstance :: SourceType
pattern SourceTypeDbInstance = SourceType' "db-instance"

pattern SourceTypeDbParameterGroup :: SourceType
pattern SourceTypeDbParameterGroup = SourceType' "db-parameter-group"

pattern SourceTypeDbSecurityGroup :: SourceType
pattern SourceTypeDbSecurityGroup = SourceType' "db-security-group"

pattern SourceTypeDbSnapshot :: SourceType
pattern SourceTypeDbSnapshot = SourceType' "db-snapshot"

{-# COMPLETE
  SourceTypeDbCluster,
  SourceTypeDbClusterSnapshot,
  SourceTypeDbInstance,
  SourceTypeDbParameterGroup,
  SourceTypeDbSecurityGroup,
  SourceTypeDbSnapshot,
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
