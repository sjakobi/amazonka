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
-- Module      : Network.AWS.Discovery.Types.OrderString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.OrderString
  ( OrderString
      ( ..,
        OrderStringASC,
        OrderStringDESC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrderString = OrderString'
  { fromOrderString ::
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

pattern OrderStringASC :: OrderString
pattern OrderStringASC = OrderString' "ASC"

pattern OrderStringDESC :: OrderString
pattern OrderStringDESC = OrderString' "DESC"

{-# COMPLETE
  OrderStringASC,
  OrderStringDESC,
  OrderString'
  #-}

instance Prelude.FromText OrderString where
  parser = OrderString' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrderString where
  toText (OrderString' x) = x

instance Prelude.Hashable OrderString

instance Prelude.NFData OrderString

instance Prelude.ToByteString OrderString

instance Prelude.ToQuery OrderString

instance Prelude.ToHeader OrderString

instance Prelude.ToJSON OrderString where
  toJSON = Prelude.toJSONText
