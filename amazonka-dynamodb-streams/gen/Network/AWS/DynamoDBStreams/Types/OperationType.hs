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
-- Module      : Network.AWS.DynamoDBStreams.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.OperationType
  ( OperationType
      ( ..,
        OperationTypeINSERT,
        OperationTypeMODIFY,
        OperationTypeREMOVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationType = OperationType'
  { fromOperationType ::
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

pattern OperationTypeINSERT :: OperationType
pattern OperationTypeINSERT = OperationType' "INSERT"

pattern OperationTypeMODIFY :: OperationType
pattern OperationTypeMODIFY = OperationType' "MODIFY"

pattern OperationTypeREMOVE :: OperationType
pattern OperationTypeREMOVE = OperationType' "REMOVE"

{-# COMPLETE
  OperationTypeINSERT,
  OperationTypeMODIFY,
  OperationTypeREMOVE,
  OperationType'
  #-}

instance Prelude.FromText OperationType where
  parser = OperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationType where
  toText (OperationType' x) = x

instance Prelude.Hashable OperationType

instance Prelude.NFData OperationType

instance Prelude.ToByteString OperationType

instance Prelude.ToQuery OperationType

instance Prelude.ToHeader OperationType

instance Prelude.FromJSON OperationType where
  parseJSON = Prelude.parseJSONText "OperationType"
