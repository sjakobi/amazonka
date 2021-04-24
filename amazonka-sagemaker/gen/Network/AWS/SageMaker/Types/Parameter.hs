{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Parameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Parameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Assigns a value to a named Pipeline parameter.
--
--
--
-- /See:/ 'parameter' smart constructor.
data Parameter = Parameter'
  { _pName :: !Text,
    _pValue :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Parameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pName' - The name of the parameter to assign a value to. This parameter name must match a named parameter in the pipeline definition.
--
-- * 'pValue' - The literal value for the parameter.
parameter ::
  -- | 'pName'
  Text ->
  -- | 'pValue'
  Text ->
  Parameter
parameter pName_ pValue_ =
  Parameter' {_pName = pName_, _pValue = pValue_}

-- | The name of the parameter to assign a value to. This parameter name must match a named parameter in the pipeline definition.
pName :: Lens' Parameter Text
pName = lens _pName (\s a -> s {_pName = a})

-- | The literal value for the parameter.
pValue :: Lens' Parameter Text
pValue = lens _pValue (\s a -> s {_pValue = a})

instance FromJSON Parameter where
  parseJSON =
    withObject
      "Parameter"
      ( \x ->
          Parameter' <$> (x .: "Name") <*> (x .: "Value")
      )

instance Hashable Parameter

instance NFData Parameter

instance ToJSON Parameter where
  toJSON Parameter' {..} =
    object
      ( catMaybes
          [Just ("Name" .= _pName), Just ("Value" .= _pValue)]
      )
