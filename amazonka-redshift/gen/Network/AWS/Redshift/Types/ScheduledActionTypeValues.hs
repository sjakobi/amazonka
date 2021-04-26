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
-- Module      : Network.AWS.Redshift.Types.ScheduledActionTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionTypeValues
  ( ScheduledActionTypeValues
      ( ..,
        ScheduledActionTypeValuesPauseCluster,
        ScheduledActionTypeValuesResizeCluster,
        ScheduledActionTypeValuesResumeCluster
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ScheduledActionTypeValues = ScheduledActionTypeValues'
  { fromScheduledActionTypeValues ::
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

pattern ScheduledActionTypeValuesPauseCluster :: ScheduledActionTypeValues
pattern ScheduledActionTypeValuesPauseCluster = ScheduledActionTypeValues' "PauseCluster"

pattern ScheduledActionTypeValuesResizeCluster :: ScheduledActionTypeValues
pattern ScheduledActionTypeValuesResizeCluster = ScheduledActionTypeValues' "ResizeCluster"

pattern ScheduledActionTypeValuesResumeCluster :: ScheduledActionTypeValues
pattern ScheduledActionTypeValuesResumeCluster = ScheduledActionTypeValues' "ResumeCluster"

{-# COMPLETE
  ScheduledActionTypeValuesPauseCluster,
  ScheduledActionTypeValuesResizeCluster,
  ScheduledActionTypeValuesResumeCluster,
  ScheduledActionTypeValues'
  #-}

instance Prelude.FromText ScheduledActionTypeValues where
  parser = ScheduledActionTypeValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScheduledActionTypeValues where
  toText (ScheduledActionTypeValues' x) = x

instance Prelude.Hashable ScheduledActionTypeValues

instance Prelude.NFData ScheduledActionTypeValues

instance Prelude.ToByteString ScheduledActionTypeValues

instance Prelude.ToQuery ScheduledActionTypeValues

instance Prelude.ToHeader ScheduledActionTypeValues
