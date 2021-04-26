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
-- Module      : Network.AWS.CognitoSync.Types.Operation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.Operation
  ( Operation
      ( ..,
        OperationRemove,
        OperationReplace
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Operation = Operation'
  { fromOperation ::
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

pattern OperationRemove :: Operation
pattern OperationRemove = Operation' "remove"

pattern OperationReplace :: Operation
pattern OperationReplace = Operation' "replace"

{-# COMPLETE
  OperationRemove,
  OperationReplace,
  Operation'
  #-}

instance Prelude.FromText Operation where
  parser = Operation' Prelude.<$> Prelude.takeText

instance Prelude.ToText Operation where
  toText (Operation' x) = x

instance Prelude.Hashable Operation

instance Prelude.NFData Operation

instance Prelude.ToByteString Operation

instance Prelude.ToQuery Operation

instance Prelude.ToHeader Operation

instance Prelude.ToJSON Operation where
  toJSON = Prelude.toJSONText
