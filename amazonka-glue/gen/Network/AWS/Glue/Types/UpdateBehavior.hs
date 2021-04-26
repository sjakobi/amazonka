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
-- Module      : Network.AWS.Glue.Types.UpdateBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.UpdateBehavior
  ( UpdateBehavior
      ( ..,
        UpdateBehaviorLOG,
        UpdateBehaviorUPDATEINDATABASE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpdateBehavior = UpdateBehavior'
  { fromUpdateBehavior ::
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

pattern UpdateBehaviorLOG :: UpdateBehavior
pattern UpdateBehaviorLOG = UpdateBehavior' "LOG"

pattern UpdateBehaviorUPDATEINDATABASE :: UpdateBehavior
pattern UpdateBehaviorUPDATEINDATABASE = UpdateBehavior' "UPDATE_IN_DATABASE"

{-# COMPLETE
  UpdateBehaviorLOG,
  UpdateBehaviorUPDATEINDATABASE,
  UpdateBehavior'
  #-}

instance Prelude.FromText UpdateBehavior where
  parser = UpdateBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateBehavior where
  toText (UpdateBehavior' x) = x

instance Prelude.Hashable UpdateBehavior

instance Prelude.NFData UpdateBehavior

instance Prelude.ToByteString UpdateBehavior

instance Prelude.ToQuery UpdateBehavior

instance Prelude.ToHeader UpdateBehavior

instance Prelude.ToJSON UpdateBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UpdateBehavior where
  parseJSON = Prelude.parseJSONText "UpdateBehavior"
