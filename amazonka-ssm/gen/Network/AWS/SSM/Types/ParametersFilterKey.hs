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
-- Module      : Network.AWS.SSM.Types.ParametersFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ParametersFilterKey
  ( ParametersFilterKey
      ( ..,
        ParametersFilterKeyKeyId,
        ParametersFilterKeyName,
        ParametersFilterKeyType
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParametersFilterKey = ParametersFilterKey'
  { fromParametersFilterKey ::
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

pattern ParametersFilterKeyKeyId :: ParametersFilterKey
pattern ParametersFilterKeyKeyId = ParametersFilterKey' "KeyId"

pattern ParametersFilterKeyName :: ParametersFilterKey
pattern ParametersFilterKeyName = ParametersFilterKey' "Name"

pattern ParametersFilterKeyType :: ParametersFilterKey
pattern ParametersFilterKeyType = ParametersFilterKey' "Type"

{-# COMPLETE
  ParametersFilterKeyKeyId,
  ParametersFilterKeyName,
  ParametersFilterKeyType,
  ParametersFilterKey'
  #-}

instance Prelude.FromText ParametersFilterKey where
  parser = ParametersFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParametersFilterKey where
  toText (ParametersFilterKey' x) = x

instance Prelude.Hashable ParametersFilterKey

instance Prelude.NFData ParametersFilterKey

instance Prelude.ToByteString ParametersFilterKey

instance Prelude.ToQuery ParametersFilterKey

instance Prelude.ToHeader ParametersFilterKey

instance Prelude.ToJSON ParametersFilterKey where
  toJSON = Prelude.toJSONText
