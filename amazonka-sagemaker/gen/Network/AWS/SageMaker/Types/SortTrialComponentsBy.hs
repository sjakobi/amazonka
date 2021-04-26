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
-- Module      : Network.AWS.SageMaker.Types.SortTrialComponentsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortTrialComponentsBy
  ( SortTrialComponentsBy
      ( ..,
        SortTrialComponentsByCreationTime,
        SortTrialComponentsByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortTrialComponentsBy = SortTrialComponentsBy'
  { fromSortTrialComponentsBy ::
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

pattern SortTrialComponentsByCreationTime :: SortTrialComponentsBy
pattern SortTrialComponentsByCreationTime = SortTrialComponentsBy' "CreationTime"

pattern SortTrialComponentsByName :: SortTrialComponentsBy
pattern SortTrialComponentsByName = SortTrialComponentsBy' "Name"

{-# COMPLETE
  SortTrialComponentsByCreationTime,
  SortTrialComponentsByName,
  SortTrialComponentsBy'
  #-}

instance Prelude.FromText SortTrialComponentsBy where
  parser = SortTrialComponentsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortTrialComponentsBy where
  toText (SortTrialComponentsBy' x) = x

instance Prelude.Hashable SortTrialComponentsBy

instance Prelude.NFData SortTrialComponentsBy

instance Prelude.ToByteString SortTrialComponentsBy

instance Prelude.ToQuery SortTrialComponentsBy

instance Prelude.ToHeader SortTrialComponentsBy

instance Prelude.ToJSON SortTrialComponentsBy where
  toJSON = Prelude.toJSONText
