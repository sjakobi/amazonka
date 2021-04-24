{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.Types.PipelineObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataPipeline.Types.PipelineObject where

import Network.AWS.DataPipeline.Types.Field
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.
--
--
--
-- /See:/ 'pipelineObject' smart constructor.
data PipelineObject = PipelineObject'
  { _poId :: !Text,
    _poName :: !Text,
    _poFields :: ![Field]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poId' - The ID of the object.
--
-- * 'poName' - The name of the object.
--
-- * 'poFields' - Key-value pairs that define the properties of the object.
pipelineObject ::
  -- | 'poId'
  Text ->
  -- | 'poName'
  Text ->
  PipelineObject
pipelineObject pId_ pName_ =
  PipelineObject'
    { _poId = pId_,
      _poName = pName_,
      _poFields = mempty
    }

-- | The ID of the object.
poId :: Lens' PipelineObject Text
poId = lens _poId (\s a -> s {_poId = a})

-- | The name of the object.
poName :: Lens' PipelineObject Text
poName = lens _poName (\s a -> s {_poName = a})

-- | Key-value pairs that define the properties of the object.
poFields :: Lens' PipelineObject [Field]
poFields = lens _poFields (\s a -> s {_poFields = a}) . _Coerce

instance FromJSON PipelineObject where
  parseJSON =
    withObject
      "PipelineObject"
      ( \x ->
          PipelineObject'
            <$> (x .: "id")
            <*> (x .: "name")
            <*> (x .:? "fields" .!= mempty)
      )

instance Hashable PipelineObject

instance NFData PipelineObject

instance ToJSON PipelineObject where
  toJSON PipelineObject' {..} =
    object
      ( catMaybes
          [ Just ("id" .= _poId),
            Just ("name" .= _poName),
            Just ("fields" .= _poFields)
          ]
      )
