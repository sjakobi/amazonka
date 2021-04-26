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
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupStatus
  ( FeatureGroupStatus
      ( ..,
        FeatureGroupStatusCreateFailed,
        FeatureGroupStatusCreated,
        FeatureGroupStatusCreating,
        FeatureGroupStatusDeleteFailed,
        FeatureGroupStatusDeleting
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FeatureGroupStatus = FeatureGroupStatus'
  { fromFeatureGroupStatus ::
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

pattern FeatureGroupStatusCreateFailed :: FeatureGroupStatus
pattern FeatureGroupStatusCreateFailed = FeatureGroupStatus' "CreateFailed"

pattern FeatureGroupStatusCreated :: FeatureGroupStatus
pattern FeatureGroupStatusCreated = FeatureGroupStatus' "Created"

pattern FeatureGroupStatusCreating :: FeatureGroupStatus
pattern FeatureGroupStatusCreating = FeatureGroupStatus' "Creating"

pattern FeatureGroupStatusDeleteFailed :: FeatureGroupStatus
pattern FeatureGroupStatusDeleteFailed = FeatureGroupStatus' "DeleteFailed"

pattern FeatureGroupStatusDeleting :: FeatureGroupStatus
pattern FeatureGroupStatusDeleting = FeatureGroupStatus' "Deleting"

{-# COMPLETE
  FeatureGroupStatusCreateFailed,
  FeatureGroupStatusCreated,
  FeatureGroupStatusCreating,
  FeatureGroupStatusDeleteFailed,
  FeatureGroupStatusDeleting,
  FeatureGroupStatus'
  #-}

instance Prelude.FromText FeatureGroupStatus where
  parser = FeatureGroupStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeatureGroupStatus where
  toText (FeatureGroupStatus' x) = x

instance Prelude.Hashable FeatureGroupStatus

instance Prelude.NFData FeatureGroupStatus

instance Prelude.ToByteString FeatureGroupStatus

instance Prelude.ToQuery FeatureGroupStatus

instance Prelude.ToHeader FeatureGroupStatus

instance Prelude.ToJSON FeatureGroupStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FeatureGroupStatus where
  parseJSON = Prelude.parseJSONText "FeatureGroupStatus"
