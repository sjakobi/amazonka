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
-- Module      : Network.AWS.SageMaker.Types.AutoMLJobObjectiveType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLJobObjectiveType
  ( AutoMLJobObjectiveType
      ( ..,
        AutoMLJobObjectiveTypeMaximize,
        AutoMLJobObjectiveTypeMinimize
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLJobObjectiveType = AutoMLJobObjectiveType'
  { fromAutoMLJobObjectiveType ::
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

pattern AutoMLJobObjectiveTypeMaximize :: AutoMLJobObjectiveType
pattern AutoMLJobObjectiveTypeMaximize = AutoMLJobObjectiveType' "Maximize"

pattern AutoMLJobObjectiveTypeMinimize :: AutoMLJobObjectiveType
pattern AutoMLJobObjectiveTypeMinimize = AutoMLJobObjectiveType' "Minimize"

{-# COMPLETE
  AutoMLJobObjectiveTypeMaximize,
  AutoMLJobObjectiveTypeMinimize,
  AutoMLJobObjectiveType'
  #-}

instance Prelude.FromText AutoMLJobObjectiveType where
  parser = AutoMLJobObjectiveType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLJobObjectiveType where
  toText (AutoMLJobObjectiveType' x) = x

instance Prelude.Hashable AutoMLJobObjectiveType

instance Prelude.NFData AutoMLJobObjectiveType

instance Prelude.ToByteString AutoMLJobObjectiveType

instance Prelude.ToQuery AutoMLJobObjectiveType

instance Prelude.ToHeader AutoMLJobObjectiveType

instance Prelude.FromJSON AutoMLJobObjectiveType where
  parseJSON = Prelude.parseJSONText "AutoMLJobObjectiveType"
