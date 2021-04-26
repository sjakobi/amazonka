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
-- Module      : Network.AWS.Glue.Types.DeleteBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DeleteBehavior
  ( DeleteBehavior
      ( ..,
        DeleteBehaviorDELETEFROMDATABASE,
        DeleteBehaviorDEPRECATEINDATABASE,
        DeleteBehaviorLOG
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeleteBehavior = DeleteBehavior'
  { fromDeleteBehavior ::
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

pattern DeleteBehaviorDELETEFROMDATABASE :: DeleteBehavior
pattern DeleteBehaviorDELETEFROMDATABASE = DeleteBehavior' "DELETE_FROM_DATABASE"

pattern DeleteBehaviorDEPRECATEINDATABASE :: DeleteBehavior
pattern DeleteBehaviorDEPRECATEINDATABASE = DeleteBehavior' "DEPRECATE_IN_DATABASE"

pattern DeleteBehaviorLOG :: DeleteBehavior
pattern DeleteBehaviorLOG = DeleteBehavior' "LOG"

{-# COMPLETE
  DeleteBehaviorDELETEFROMDATABASE,
  DeleteBehaviorDEPRECATEINDATABASE,
  DeleteBehaviorLOG,
  DeleteBehavior'
  #-}

instance Prelude.FromText DeleteBehavior where
  parser = DeleteBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeleteBehavior where
  toText (DeleteBehavior' x) = x

instance Prelude.Hashable DeleteBehavior

instance Prelude.NFData DeleteBehavior

instance Prelude.ToByteString DeleteBehavior

instance Prelude.ToQuery DeleteBehavior

instance Prelude.ToHeader DeleteBehavior

instance Prelude.ToJSON DeleteBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeleteBehavior where
  parseJSON = Prelude.parseJSONText "DeleteBehavior"
