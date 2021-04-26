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
-- Module      : Network.AWS.DynamoDB.Types.ReturnValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReturnValue
  ( ReturnValue
      ( ..,
        ReturnValueALLNEW,
        ReturnValueALLOLD,
        ReturnValueNONE,
        ReturnValueUPDATEDNEW,
        ReturnValueUPDATEDOLD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReturnValue = ReturnValue'
  { fromReturnValue ::
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

pattern ReturnValueALLNEW :: ReturnValue
pattern ReturnValueALLNEW = ReturnValue' "ALL_NEW"

pattern ReturnValueALLOLD :: ReturnValue
pattern ReturnValueALLOLD = ReturnValue' "ALL_OLD"

pattern ReturnValueNONE :: ReturnValue
pattern ReturnValueNONE = ReturnValue' "NONE"

pattern ReturnValueUPDATEDNEW :: ReturnValue
pattern ReturnValueUPDATEDNEW = ReturnValue' "UPDATED_NEW"

pattern ReturnValueUPDATEDOLD :: ReturnValue
pattern ReturnValueUPDATEDOLD = ReturnValue' "UPDATED_OLD"

{-# COMPLETE
  ReturnValueALLNEW,
  ReturnValueALLOLD,
  ReturnValueNONE,
  ReturnValueUPDATEDNEW,
  ReturnValueUPDATEDOLD,
  ReturnValue'
  #-}

instance Prelude.FromText ReturnValue where
  parser = ReturnValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReturnValue where
  toText (ReturnValue' x) = x

instance Prelude.Hashable ReturnValue

instance Prelude.NFData ReturnValue

instance Prelude.ToByteString ReturnValue

instance Prelude.ToQuery ReturnValue

instance Prelude.ToHeader ReturnValue

instance Prelude.ToJSON ReturnValue where
  toJSON = Prelude.toJSONText
