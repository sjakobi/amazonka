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
-- Module      : Network.AWS.SSM.Types.DescribeActivationsFilterKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DescribeActivationsFilterKeys
  ( DescribeActivationsFilterKeys
      ( ..,
        DescribeActivationsFilterKeysActivationIds,
        DescribeActivationsFilterKeysDefaultInstanceName,
        DescribeActivationsFilterKeysIamRole
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DescribeActivationsFilterKeys = DescribeActivationsFilterKeys'
  { fromDescribeActivationsFilterKeys ::
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

pattern DescribeActivationsFilterKeysActivationIds :: DescribeActivationsFilterKeys
pattern DescribeActivationsFilterKeysActivationIds = DescribeActivationsFilterKeys' "ActivationIds"

pattern DescribeActivationsFilterKeysDefaultInstanceName :: DescribeActivationsFilterKeys
pattern DescribeActivationsFilterKeysDefaultInstanceName = DescribeActivationsFilterKeys' "DefaultInstanceName"

pattern DescribeActivationsFilterKeysIamRole :: DescribeActivationsFilterKeys
pattern DescribeActivationsFilterKeysIamRole = DescribeActivationsFilterKeys' "IamRole"

{-# COMPLETE
  DescribeActivationsFilterKeysActivationIds,
  DescribeActivationsFilterKeysDefaultInstanceName,
  DescribeActivationsFilterKeysIamRole,
  DescribeActivationsFilterKeys'
  #-}

instance Prelude.FromText DescribeActivationsFilterKeys where
  parser = DescribeActivationsFilterKeys' Prelude.<$> Prelude.takeText

instance Prelude.ToText DescribeActivationsFilterKeys where
  toText (DescribeActivationsFilterKeys' x) = x

instance Prelude.Hashable DescribeActivationsFilterKeys

instance Prelude.NFData DescribeActivationsFilterKeys

instance Prelude.ToByteString DescribeActivationsFilterKeys

instance Prelude.ToQuery DescribeActivationsFilterKeys

instance Prelude.ToHeader DescribeActivationsFilterKeys

instance Prelude.ToJSON DescribeActivationsFilterKeys where
  toJSON = Prelude.toJSONText
