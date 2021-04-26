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
-- Module      : Network.AWS.APIGateway.Types.Op
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.Op
  ( Op
      ( ..,
        OpAdd,
        OpCopy,
        OpMove,
        OpRemove,
        OpReplace,
        OpTest
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Op = Op' {fromOp :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern OpAdd :: Op
pattern OpAdd = Op' "add"

pattern OpCopy :: Op
pattern OpCopy = Op' "copy"

pattern OpMove :: Op
pattern OpMove = Op' "move"

pattern OpRemove :: Op
pattern OpRemove = Op' "remove"

pattern OpReplace :: Op
pattern OpReplace = Op' "replace"

pattern OpTest :: Op
pattern OpTest = Op' "test"

{-# COMPLETE
  OpAdd,
  OpCopy,
  OpMove,
  OpRemove,
  OpReplace,
  OpTest,
  Op'
  #-}

instance Prelude.FromText Op where
  parser = Op' Prelude.<$> Prelude.takeText

instance Prelude.ToText Op where
  toText (Op' x) = x

instance Prelude.Hashable Op

instance Prelude.NFData Op

instance Prelude.ToByteString Op

instance Prelude.ToQuery Op

instance Prelude.ToHeader Op

instance Prelude.ToJSON Op where
  toJSON = Prelude.toJSONText
