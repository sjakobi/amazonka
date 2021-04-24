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
-- Module      : Network.AWS.GameLift.UpdateScript
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates Realtime script metadata and content.
--
--
-- To update script metadata, specify the script ID and provide updated name and/or version values.
--
-- To update script content, provide an updated zip file by pointing to either a local file or an Amazon S3 bucket location. You can use either method regardless of how the original script was uploaded. Use the /Version/ parameter to track updates to the script.
--
-- If the call is successful, the updated metadata is stored in the script record and a revised script is uploaded to the Amazon GameLift service. Once the script is updated and acquired by a fleet instance, the new version is used for all new game sessions.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html Amazon GameLift Realtime Servers>
--
-- __Related operations__
--
--     * 'CreateScript'
--
--     * 'ListScripts'
--
--     * 'DescribeScript'
--
--     * 'UpdateScript'
--
--     * 'DeleteScript'
module Network.AWS.GameLift.UpdateScript
  ( -- * Creating a Request
    updateScript,
    UpdateScript,

    -- * Request Lenses
    usZipFile,
    usVersion,
    usName,
    usStorageLocation,
    usScriptId,

    -- * Destructuring the Response
    updateScriptResponse,
    UpdateScriptResponse,

    -- * Response Lenses
    usrrsScript,
    usrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateScript' smart constructor.
data UpdateScript = UpdateScript'
  { _usZipFile ::
      !(Maybe Base64),
    _usVersion :: !(Maybe Text),
    _usName :: !(Maybe Text),
    _usStorageLocation :: !(Maybe S3Location),
    _usScriptId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateScript' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usZipFile' - A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB. When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string "fileb://" to indicate that the file data is a binary object. For example: @--zip-file fileb://myRealtimeScript.zip@ .-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'usVersion' - The version that is associated with a build or script. Version strings do not need to be unique.
--
-- * 'usName' - A descriptive label that is associated with a script. Script names do not need to be unique.
--
-- * 'usStorageLocation' - The Amazon S3 location of your Realtime scripts. The storage location must specify the S3 bucket name, the zip file name (the "key"), and an IAM role ARN that allows Amazon GameLift to access the S3 storage location. The S3 bucket must be in the same Region as the script you're updating. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the @ObjectVersion@ parameter to specify an earlier version. To call this operation with a storage location, you must have IAM PassRole permission. For more details on IAM roles and PassRole permissions, see <https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html Set up a role for GameLift access> .
--
-- * 'usScriptId' - A unique identifier for a Realtime script to update. You can use either the script ID or ARN value.
updateScript ::
  -- | 'usScriptId'
  Text ->
  UpdateScript
updateScript pScriptId_ =
  UpdateScript'
    { _usZipFile = Nothing,
      _usVersion = Nothing,
      _usName = Nothing,
      _usStorageLocation = Nothing,
      _usScriptId = pScriptId_
    }

-- | A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB. When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string "fileb://" to indicate that the file data is a binary object. For example: @--zip-file fileb://myRealtimeScript.zip@ .-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
usZipFile :: Lens' UpdateScript (Maybe ByteString)
usZipFile = lens _usZipFile (\s a -> s {_usZipFile = a}) . mapping _Base64

-- | The version that is associated with a build or script. Version strings do not need to be unique.
usVersion :: Lens' UpdateScript (Maybe Text)
usVersion = lens _usVersion (\s a -> s {_usVersion = a})

-- | A descriptive label that is associated with a script. Script names do not need to be unique.
usName :: Lens' UpdateScript (Maybe Text)
usName = lens _usName (\s a -> s {_usName = a})

-- | The Amazon S3 location of your Realtime scripts. The storage location must specify the S3 bucket name, the zip file name (the "key"), and an IAM role ARN that allows Amazon GameLift to access the S3 storage location. The S3 bucket must be in the same Region as the script you're updating. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the @ObjectVersion@ parameter to specify an earlier version. To call this operation with a storage location, you must have IAM PassRole permission. For more details on IAM roles and PassRole permissions, see <https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html Set up a role for GameLift access> .
usStorageLocation :: Lens' UpdateScript (Maybe S3Location)
usStorageLocation = lens _usStorageLocation (\s a -> s {_usStorageLocation = a})

-- | A unique identifier for a Realtime script to update. You can use either the script ID or ARN value.
usScriptId :: Lens' UpdateScript Text
usScriptId = lens _usScriptId (\s a -> s {_usScriptId = a})

instance AWSRequest UpdateScript where
  type Rs UpdateScript = UpdateScriptResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          UpdateScriptResponse'
            <$> (x .?> "Script") <*> (pure (fromEnum s))
      )

instance Hashable UpdateScript

instance NFData UpdateScript

instance ToHeaders UpdateScript where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.UpdateScript" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateScript where
  toJSON UpdateScript' {..} =
    object
      ( catMaybes
          [ ("ZipFile" .=) <$> _usZipFile,
            ("Version" .=) <$> _usVersion,
            ("Name" .=) <$> _usName,
            ("StorageLocation" .=) <$> _usStorageLocation,
            Just ("ScriptId" .= _usScriptId)
          ]
      )

instance ToPath UpdateScript where
  toPath = const "/"

instance ToQuery UpdateScript where
  toQuery = const mempty

-- | /See:/ 'updateScriptResponse' smart constructor.
data UpdateScriptResponse = UpdateScriptResponse'
  { _usrrsScript ::
      !(Maybe Script),
    _usrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateScriptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsScript' - The newly created script record with a unique script ID. The new script's storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket under your account, the storage location reflects the information that was provided in the /CreateScript/ request; (2) If the script file was uploaded from a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift service.
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateScriptResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateScriptResponse
updateScriptResponse pResponseStatus_ =
  UpdateScriptResponse'
    { _usrrsScript = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | The newly created script record with a unique script ID. The new script's storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket under your account, the storage location reflects the information that was provided in the /CreateScript/ request; (2) If the script file was uploaded from a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift service.
usrrsScript :: Lens' UpdateScriptResponse (Maybe Script)
usrrsScript = lens _usrrsScript (\s a -> s {_usrrsScript = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateScriptResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateScriptResponse
