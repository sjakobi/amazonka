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
-- Module      : Network.AWS.DynamoDB.Types.ReturnConsumedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReturnConsumedCapacity
  ( ReturnConsumedCapacity
      ( ..,
        ReturnConsumedCapacityINDEXES,
        ReturnConsumedCapacityNONE,
        ReturnConsumedCapacityTOTAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Determines the level of detail about provisioned throughput consumption
-- that is returned in the response:
--
-- -   @INDEXES@ - The response includes the aggregate @ConsumedCapacity@
--     for the operation, together with @ConsumedCapacity@ for each table
--     and secondary index that was accessed.
--
--     Note that some operations, such as @GetItem@ and @BatchGetItem@, do
--     not access any indexes at all. In these cases, specifying @INDEXES@
--     will only return @ConsumedCapacity@ information for table(s).
--
-- -   @TOTAL@ - The response includes only the aggregate
--     @ConsumedCapacity@ for the operation.
--
-- -   @NONE@ - No @ConsumedCapacity@ details are included in the response.
newtype ReturnConsumedCapacity = ReturnConsumedCapacity'
  { fromReturnConsumedCapacity ::
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

pattern ReturnConsumedCapacityINDEXES :: ReturnConsumedCapacity
pattern ReturnConsumedCapacityINDEXES = ReturnConsumedCapacity' "INDEXES"

pattern ReturnConsumedCapacityNONE :: ReturnConsumedCapacity
pattern ReturnConsumedCapacityNONE = ReturnConsumedCapacity' "NONE"

pattern ReturnConsumedCapacityTOTAL :: ReturnConsumedCapacity
pattern ReturnConsumedCapacityTOTAL = ReturnConsumedCapacity' "TOTAL"

{-# COMPLETE
  ReturnConsumedCapacityINDEXES,
  ReturnConsumedCapacityNONE,
  ReturnConsumedCapacityTOTAL,
  ReturnConsumedCapacity'
  #-}

instance Prelude.FromText ReturnConsumedCapacity where
  parser = ReturnConsumedCapacity' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReturnConsumedCapacity where
  toText (ReturnConsumedCapacity' x) = x

instance Prelude.Hashable ReturnConsumedCapacity

instance Prelude.NFData ReturnConsumedCapacity

instance Prelude.ToByteString ReturnConsumedCapacity

instance Prelude.ToQuery ReturnConsumedCapacity

instance Prelude.ToHeader ReturnConsumedCapacity

instance Prelude.ToJSON ReturnConsumedCapacity where
  toJSON = Prelude.toJSONText
