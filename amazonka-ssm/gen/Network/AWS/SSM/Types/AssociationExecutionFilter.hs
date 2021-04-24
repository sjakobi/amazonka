{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationExecutionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.AssociationExecutionFilterKey
import Network.AWS.SSM.Types.AssociationFilterOperatorType

-- | Filters used in the request.
--
--
--
-- /See:/ 'associationExecutionFilter' smart constructor.
data AssociationExecutionFilter = AssociationExecutionFilter'
  { _assKey ::
      !AssociationExecutionFilterKey,
    _assValue ::
      !Text,
    _assType ::
      !AssociationFilterOperatorType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociationExecutionFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assKey' - The key value used in the request.
--
-- * 'assValue' - The value specified for the key.
--
-- * 'assType' - The filter type specified in the request.
associationExecutionFilter ::
  -- | 'assKey'
  AssociationExecutionFilterKey ->
  -- | 'assValue'
  Text ->
  -- | 'assType'
  AssociationFilterOperatorType ->
  AssociationExecutionFilter
associationExecutionFilter pKey_ pValue_ pType_ =
  AssociationExecutionFilter'
    { _assKey = pKey_,
      _assValue = pValue_,
      _assType = pType_
    }

-- | The key value used in the request.
assKey :: Lens' AssociationExecutionFilter AssociationExecutionFilterKey
assKey = lens _assKey (\s a -> s {_assKey = a})

-- | The value specified for the key.
assValue :: Lens' AssociationExecutionFilter Text
assValue = lens _assValue (\s a -> s {_assValue = a})

-- | The filter type specified in the request.
assType :: Lens' AssociationExecutionFilter AssociationFilterOperatorType
assType = lens _assType (\s a -> s {_assType = a})

instance Hashable AssociationExecutionFilter

instance NFData AssociationExecutionFilter

instance ToJSON AssociationExecutionFilter where
  toJSON AssociationExecutionFilter' {..} =
    object
      ( catMaybes
          [ Just ("Key" .= _assKey),
            Just ("Value" .= _assValue),
            Just ("Type" .= _assType)
          ]
      )
