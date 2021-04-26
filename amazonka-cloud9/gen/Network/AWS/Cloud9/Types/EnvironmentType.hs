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
-- Module      : Network.AWS.Cloud9.Types.EnvironmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentType
  ( EnvironmentType
      ( ..,
        EnvironmentTypeEC2,
        EnvironmentTypeSsh
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentType = EnvironmentType'
  { fromEnvironmentType ::
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

pattern EnvironmentTypeEC2 :: EnvironmentType
pattern EnvironmentTypeEC2 = EnvironmentType' "ec2"

pattern EnvironmentTypeSsh :: EnvironmentType
pattern EnvironmentTypeSsh = EnvironmentType' "ssh"

{-# COMPLETE
  EnvironmentTypeEC2,
  EnvironmentTypeSsh,
  EnvironmentType'
  #-}

instance Prelude.FromText EnvironmentType where
  parser = EnvironmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentType where
  toText (EnvironmentType' x) = x

instance Prelude.Hashable EnvironmentType

instance Prelude.NFData EnvironmentType

instance Prelude.ToByteString EnvironmentType

instance Prelude.ToQuery EnvironmentType

instance Prelude.ToHeader EnvironmentType

instance Prelude.FromJSON EnvironmentType where
  parseJSON = Prelude.parseJSONText "EnvironmentType"
