{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.UpdateStudio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon EMR Studio configuration, including attributes such as name, description, and subnets.
module Network.AWS.EMR.UpdateStudio
  ( -- * Creating a Request
    updateStudio,
    UpdateStudio,

    -- * Request Lenses
    usDefaultS3Location,
    usSubnetIds,
    usName,
    usDescription,
    usStudioId,

    -- * Destructuring the Response
    updateStudioResponse,
    UpdateStudioResponse,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateStudio' smart constructor.
data UpdateStudio = UpdateStudio'
  { _usDefaultS3Location ::
      !(Maybe Text),
    _usSubnetIds :: !(Maybe [Text]),
    _usName :: !(Maybe Text),
    _usDescription :: !(Maybe Text),
    _usStudioId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usDefaultS3Location' - A default Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
--
-- * 'usSubnetIds' - A list of subnet IDs to associate with the Amazon EMR Studio. The list can include new subnet IDs, but must also include all of the subnet IDs previously associated with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets. The subnets must belong to the same VPC as the Studio.
--
-- * 'usName' - A descriptive name for the Amazon EMR Studio.
--
-- * 'usDescription' - A detailed description to assign to the Amazon EMR Studio.
--
-- * 'usStudioId' - The ID of the Amazon EMR Studio to update.
updateStudio ::
  -- | 'usStudioId'
  Text ->
  UpdateStudio
updateStudio pStudioId_ =
  UpdateStudio'
    { _usDefaultS3Location = Nothing,
      _usSubnetIds = Nothing,
      _usName = Nothing,
      _usDescription = Nothing,
      _usStudioId = pStudioId_
    }

-- | A default Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio. A Studio user can select an alternative Amazon S3 location when creating a Workspace.
usDefaultS3Location :: Lens' UpdateStudio (Maybe Text)
usDefaultS3Location = lens _usDefaultS3Location (\s a -> s {_usDefaultS3Location = a})

-- | A list of subnet IDs to associate with the Amazon EMR Studio. The list can include new subnet IDs, but must also include all of the subnet IDs previously associated with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets. The subnets must belong to the same VPC as the Studio.
usSubnetIds :: Lens' UpdateStudio [Text]
usSubnetIds = lens _usSubnetIds (\s a -> s {_usSubnetIds = a}) . _Default . _Coerce

-- | A descriptive name for the Amazon EMR Studio.
usName :: Lens' UpdateStudio (Maybe Text)
usName = lens _usName (\s a -> s {_usName = a})

-- | A detailed description to assign to the Amazon EMR Studio.
usDescription :: Lens' UpdateStudio (Maybe Text)
usDescription = lens _usDescription (\s a -> s {_usDescription = a})

-- | The ID of the Amazon EMR Studio to update.
usStudioId :: Lens' UpdateStudio Text
usStudioId = lens _usStudioId (\s a -> s {_usStudioId = a})

instance AWSRequest UpdateStudio where
  type Rs UpdateStudio = UpdateStudioResponse
  request = postJSON emr
  response = receiveNull UpdateStudioResponse'

instance Hashable UpdateStudio

instance NFData UpdateStudio

instance ToHeaders UpdateStudio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ElasticMapReduce.UpdateStudio" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateStudio where
  toJSON UpdateStudio' {..} =
    object
      ( catMaybes
          [ ("DefaultS3Location" .=) <$> _usDefaultS3Location,
            ("SubnetIds" .=) <$> _usSubnetIds,
            ("Name" .=) <$> _usName,
            ("Description" .=) <$> _usDescription,
            Just ("StudioId" .= _usStudioId)
          ]
      )

instance ToPath UpdateStudio where
  toPath = const "/"

instance ToQuery UpdateStudio where
  toQuery = const mempty

-- | /See:/ 'updateStudioResponse' smart constructor.
data UpdateStudioResponse = UpdateStudioResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStudioResponse' with the minimum fields required to make a request.
updateStudioResponse ::
  UpdateStudioResponse
updateStudioResponse = UpdateStudioResponse'

instance NFData UpdateStudioResponse
