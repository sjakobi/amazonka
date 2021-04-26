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
-- Module      : Network.AWS.DynamoDB.Types.ReturnValuesOnConditionCheckFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReturnValuesOnConditionCheckFailure
  ( ReturnValuesOnConditionCheckFailure
      ( ..,
        ReturnValuesOnConditionCheckFailureALLOLD,
        ReturnValuesOnConditionCheckFailureNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReturnValuesOnConditionCheckFailure = ReturnValuesOnConditionCheckFailure'
  { fromReturnValuesOnConditionCheckFailure ::
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

pattern ReturnValuesOnConditionCheckFailureALLOLD :: ReturnValuesOnConditionCheckFailure
pattern ReturnValuesOnConditionCheckFailureALLOLD = ReturnValuesOnConditionCheckFailure' "ALL_OLD"

pattern ReturnValuesOnConditionCheckFailureNONE :: ReturnValuesOnConditionCheckFailure
pattern ReturnValuesOnConditionCheckFailureNONE = ReturnValuesOnConditionCheckFailure' "NONE"

{-# COMPLETE
  ReturnValuesOnConditionCheckFailureALLOLD,
  ReturnValuesOnConditionCheckFailureNONE,
  ReturnValuesOnConditionCheckFailure'
  #-}

instance Prelude.FromText ReturnValuesOnConditionCheckFailure where
  parser = ReturnValuesOnConditionCheckFailure' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReturnValuesOnConditionCheckFailure where
  toText (ReturnValuesOnConditionCheckFailure' x) = x

instance Prelude.Hashable ReturnValuesOnConditionCheckFailure

instance Prelude.NFData ReturnValuesOnConditionCheckFailure

instance Prelude.ToByteString ReturnValuesOnConditionCheckFailure

instance Prelude.ToQuery ReturnValuesOnConditionCheckFailure

instance Prelude.ToHeader ReturnValuesOnConditionCheckFailure

instance Prelude.ToJSON ReturnValuesOnConditionCheckFailure where
  toJSON = Prelude.toJSONText
