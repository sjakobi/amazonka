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
-- Module      : Network.AWS.DynamoDB.Types.AttributeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AttributeAction
  ( AttributeAction
      ( ..,
        AttributeActionADD,
        AttributeActionDELETE,
        AttributeActionPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttributeAction = AttributeAction'
  { fromAttributeAction ::
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

pattern AttributeActionADD :: AttributeAction
pattern AttributeActionADD = AttributeAction' "ADD"

pattern AttributeActionDELETE :: AttributeAction
pattern AttributeActionDELETE = AttributeAction' "DELETE"

pattern AttributeActionPUT :: AttributeAction
pattern AttributeActionPUT = AttributeAction' "PUT"

{-# COMPLETE
  AttributeActionADD,
  AttributeActionDELETE,
  AttributeActionPUT,
  AttributeAction'
  #-}

instance Prelude.FromText AttributeAction where
  parser = AttributeAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttributeAction where
  toText (AttributeAction' x) = x

instance Prelude.Hashable AttributeAction

instance Prelude.NFData AttributeAction

instance Prelude.ToByteString AttributeAction

instance Prelude.ToQuery AttributeAction

instance Prelude.ToHeader AttributeAction

instance Prelude.ToJSON AttributeAction where
  toJSON = Prelude.toJSONText
