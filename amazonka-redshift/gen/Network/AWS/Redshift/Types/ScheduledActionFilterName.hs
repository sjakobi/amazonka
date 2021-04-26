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
-- Module      : Network.AWS.Redshift.Types.ScheduledActionFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionFilterName
  ( ScheduledActionFilterName
      ( ..,
        ScheduledActionFilterNameClusterIdentifier,
        ScheduledActionFilterNameIamRole
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ScheduledActionFilterName = ScheduledActionFilterName'
  { fromScheduledActionFilterName ::
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

pattern ScheduledActionFilterNameClusterIdentifier :: ScheduledActionFilterName
pattern ScheduledActionFilterNameClusterIdentifier = ScheduledActionFilterName' "cluster-identifier"

pattern ScheduledActionFilterNameIamRole :: ScheduledActionFilterName
pattern ScheduledActionFilterNameIamRole = ScheduledActionFilterName' "iam-role"

{-# COMPLETE
  ScheduledActionFilterNameClusterIdentifier,
  ScheduledActionFilterNameIamRole,
  ScheduledActionFilterName'
  #-}

instance Prelude.FromText ScheduledActionFilterName where
  parser = ScheduledActionFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduledActionFilterName where
  toText (ScheduledActionFilterName' x) = x

instance Prelude.Hashable ScheduledActionFilterName

instance Prelude.NFData ScheduledActionFilterName

instance Prelude.ToByteString ScheduledActionFilterName

instance Prelude.ToQuery ScheduledActionFilterName

instance Prelude.ToHeader ScheduledActionFilterName
