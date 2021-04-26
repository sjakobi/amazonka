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
-- Module      : Network.AWS.SageMaker.Types.SortExperimentsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortExperimentsBy
  ( SortExperimentsBy
      ( ..,
        SortExperimentsByCreationTime,
        SortExperimentsByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortExperimentsBy = SortExperimentsBy'
  { fromSortExperimentsBy ::
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

pattern SortExperimentsByCreationTime :: SortExperimentsBy
pattern SortExperimentsByCreationTime = SortExperimentsBy' "CreationTime"

pattern SortExperimentsByName :: SortExperimentsBy
pattern SortExperimentsByName = SortExperimentsBy' "Name"

{-# COMPLETE
  SortExperimentsByCreationTime,
  SortExperimentsByName,
  SortExperimentsBy'
  #-}

instance Prelude.FromText SortExperimentsBy where
  parser = SortExperimentsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortExperimentsBy where
  toText (SortExperimentsBy' x) = x

instance Prelude.Hashable SortExperimentsBy

instance Prelude.NFData SortExperimentsBy

instance Prelude.ToByteString SortExperimentsBy

instance Prelude.ToQuery SortExperimentsBy

instance Prelude.ToHeader SortExperimentsBy

instance Prelude.ToJSON SortExperimentsBy where
  toJSON = Prelude.toJSONText
