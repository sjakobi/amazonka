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
-- Module      : Network.AWS.SageMaker.Types.SortTrialsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortTrialsBy
  ( SortTrialsBy
      ( ..,
        SortTrialsByCreationTime,
        SortTrialsByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortTrialsBy = SortTrialsBy'
  { fromSortTrialsBy ::
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

pattern SortTrialsByCreationTime :: SortTrialsBy
pattern SortTrialsByCreationTime = SortTrialsBy' "CreationTime"

pattern SortTrialsByName :: SortTrialsBy
pattern SortTrialsByName = SortTrialsBy' "Name"

{-# COMPLETE
  SortTrialsByCreationTime,
  SortTrialsByName,
  SortTrialsBy'
  #-}

instance Prelude.FromText SortTrialsBy where
  parser = SortTrialsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortTrialsBy where
  toText (SortTrialsBy' x) = x

instance Prelude.Hashable SortTrialsBy

instance Prelude.NFData SortTrialsBy

instance Prelude.ToByteString SortTrialsBy

instance Prelude.ToQuery SortTrialsBy

instance Prelude.ToHeader SortTrialsBy

instance Prelude.ToJSON SortTrialsBy where
  toJSON = Prelude.toJSONText
