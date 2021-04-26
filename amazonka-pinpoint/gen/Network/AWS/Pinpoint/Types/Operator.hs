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
-- Module      : Network.AWS.Pinpoint.Types.Operator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Operator
  ( Operator
      ( ..,
        OperatorALL,
        OperatorANY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Operator = Operator'
  { fromOperator ::
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

pattern OperatorALL :: Operator
pattern OperatorALL = Operator' "ALL"

pattern OperatorANY :: Operator
pattern OperatorANY = Operator' "ANY"

{-# COMPLETE
  OperatorALL,
  OperatorANY,
  Operator'
  #-}

instance Prelude.FromText Operator where
  parser = Operator' Prelude.<$> Prelude.takeText

instance Prelude.ToText Operator where
  toText (Operator' x) = x

instance Prelude.Hashable Operator

instance Prelude.NFData Operator

instance Prelude.ToByteString Operator

instance Prelude.ToQuery Operator

instance Prelude.ToHeader Operator

instance Prelude.ToJSON Operator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Operator where
  parseJSON = Prelude.parseJSONText "Operator"
