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
-- Module      : Network.AWS.SageMaker.Types.RepositoryAccessMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RepositoryAccessMode
  ( RepositoryAccessMode
      ( ..,
        RepositoryAccessModePlatform,
        RepositoryAccessModeVpc
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RepositoryAccessMode = RepositoryAccessMode'
  { fromRepositoryAccessMode ::
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

pattern RepositoryAccessModePlatform :: RepositoryAccessMode
pattern RepositoryAccessModePlatform = RepositoryAccessMode' "Platform"

pattern RepositoryAccessModeVpc :: RepositoryAccessMode
pattern RepositoryAccessModeVpc = RepositoryAccessMode' "Vpc"

{-# COMPLETE
  RepositoryAccessModePlatform,
  RepositoryAccessModeVpc,
  RepositoryAccessMode'
  #-}

instance Prelude.FromText RepositoryAccessMode where
  parser = RepositoryAccessMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RepositoryAccessMode where
  toText (RepositoryAccessMode' x) = x

instance Prelude.Hashable RepositoryAccessMode

instance Prelude.NFData RepositoryAccessMode

instance Prelude.ToByteString RepositoryAccessMode

instance Prelude.ToQuery RepositoryAccessMode

instance Prelude.ToHeader RepositoryAccessMode

instance Prelude.ToJSON RepositoryAccessMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RepositoryAccessMode where
  parseJSON = Prelude.parseJSONText "RepositoryAccessMode"
