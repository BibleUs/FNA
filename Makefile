# Makefile for FNA
# Written by Ethan "flibitijibibo" Lee

# Source Lists
SRC = \
	src/Audio/AudioCategory.cs \
	src/Audio/AudioChannels.cs \
	src/Audio/AudioDevice.cs \
	src/Audio/AudioEmitter.cs \
	src/Audio/AudioEngine.cs \
	src/Audio/AudioListener.cs \
	src/Audio/AudioStopOptions.cs \
	src/Audio/Cue.cs \
	src/Audio/CueData.cs \
	src/Audio/DynamicSoundEffectInstance.cs \
	src/Audio/IALDevice.cs \
	src/Audio/InstancePlayLimitException.cs \
	src/Audio/Microphone.cs \
	src/Audio/MicrophoneState.cs \
	src/Audio/NoAudioHardwareException.cs \
	src/Audio/NoMicrophoneConnectedException.cs \
	src/Audio/NullDevice.cs \
	src/Audio/OpenALDevice.cs \
	src/Audio/RendererDetail.cs \
	src/Audio/SoundBank.cs \
	src/Audio/SoundEffect.cs \
	src/Audio/SoundEffectInstance.cs \
	src/Audio/SoundState.cs \
	src/Audio/WaveBank.cs \
	src/Audio/XACTInternal.cs \
	src/BoundingBox.cs \
	src/BoundingFrustum.cs \
	src/BoundingSphere.cs \
	src/Color.cs \
	src/ContainmentType.cs \
	src/Content/ContentExtensions.cs \
	src/Content/ContentLoadException.cs \
	src/Content/ContentManager.cs \
	src/Content/ContentReader.cs \
	src/Content/ContentReaders/AlphaTestEffectReader.cs \
	src/Content/ContentReaders/ArrayReader.cs \
	src/Content/ContentReaders/BasicEffectReader.cs \
	src/Content/ContentReaders/BooleanReader.cs \
	src/Content/ContentReaders/BoundingBoxReader.cs \
	src/Content/ContentReaders/BoundingFrustumReader.cs \
	src/Content/ContentReaders/BoundingSphereReader.cs \
	src/Content/ContentReaders/ByteReader.cs \
	src/Content/ContentReaders/CharReader.cs \
	src/Content/ContentReaders/ColorReader.cs \
	src/Content/ContentReaders/CurveReader.cs \
	src/Content/ContentReaders/DateTimeReader.cs \
	src/Content/ContentReaders/DecimalReader.cs \
	src/Content/ContentReaders/DictionaryReader.cs \
	src/Content/ContentReaders/DoubleReader.cs \
	src/Content/ContentReaders/DualTextureEffectReader.cs \
	src/Content/ContentReaders/EffectMaterialReader.cs \
	src/Content/ContentReaders/EffectReader.cs \
	src/Content/ContentReaders/EnumReader.cs \
	src/Content/ContentReaders/EnvironmentMapEffectReader.cs \
	src/Content/ContentReaders/ExternalReferenceReader.cs \
	src/Content/ContentReaders/IndexBufferReader.cs \
	src/Content/ContentReaders/Int16Reader.cs \
	src/Content/ContentReaders/Int32Reader.cs \
	src/Content/ContentReaders/Int64Reader.cs \
	src/Content/ContentReaders/ListReader.cs \
	src/Content/ContentReaders/MatrixReader.cs \
	src/Content/ContentReaders/ModelReader.cs \
	src/Content/ContentReaders/NullableReader.cs \
	src/Content/ContentReaders/PlaneReader.cs \
	src/Content/ContentReaders/PointReader.cs \
	src/Content/ContentReaders/QuaternionReader.cs \
	src/Content/ContentReaders/RayReader.cs \
	src/Content/ContentReaders/RectangleReader.cs \
	src/Content/ContentReaders/ReflectiveReader.cs \
	src/Content/ContentReaders/SByteReader.cs \
	src/Content/ContentReaders/SingleReader.cs \
	src/Content/ContentReaders/SkinnedEffectReader.cs \
	src/Content/ContentReaders/SongReader.cs \
	src/Content/ContentReaders/SoundEffectReader.cs \
	src/Content/ContentReaders/SpriteFontReader.cs \
	src/Content/ContentReaders/StringReader.cs \
	src/Content/ContentReaders/Texture2DReader.cs \
	src/Content/ContentReaders/Texture3DReader.cs \
	src/Content/ContentReaders/TextureCubeReader.cs \
	src/Content/ContentReaders/TextureReader.cs \
	src/Content/ContentReaders/TimeSpanReader.cs \
	src/Content/ContentReaders/UInt16Reader.cs \
	src/Content/ContentReaders/UInt32Reader.cs \
	src/Content/ContentReaders/UInt64Reader.cs \
	src/Content/ContentReaders/Vector2Reader.cs \
	src/Content/ContentReaders/Vector3Reader.cs \
	src/Content/ContentReaders/Vector4Reader.cs \
	src/Content/ContentReaders/VertexBufferReader.cs \
	src/Content/ContentReaders/VertexDeclarationReader.cs \
	src/Content/ContentReaders/VideoReader.cs \
	src/Content/ContentSerializerAttribute.cs \
	src/Content/ContentSerializerCollectionItemNameAttribute.cs \
	src/Content/ContentSerializerIgnoreAttribute.cs \
	src/Content/ContentSerializerRuntimeTypeAttribute.cs \
	src/Content/ContentSerializerTypeVersionAttribute.cs \
	src/Content/ContentTypeReader.cs \
	src/Content/ContentTypeReaderManager.cs \
	src/Content/LzxDecoder.cs \
	src/Content/ResourceContentManager.cs \
	src/Curve.cs \
	src/CurveContinuity.cs \
	src/CurveKey.cs \
	src/CurveKeyCollection.cs \
	src/CurveLoopType.cs \
	src/CurveTangent.cs \
	src/Design/BoundingBoxConverter.cs \
	src/Design/BoundingSphereConverter.cs \
	src/Design/ColorConverter.cs \
	src/Design/MathTypeConverter.cs \
	src/Design/MatrixConverter.cs \
	src/Design/PlaneConverter.cs \
	src/Design/PointConverter.cs \
	src/Design/QuaternionConverter.cs \
	src/Design/RayConverter.cs \
	src/Design/RectangleConverter.cs \
	src/Design/Vector2Converter.cs \
	src/Design/Vector3Converter.cs \
	src/Design/Vector4Converter.cs \
	src/DisplayOrientation.cs \
	src/DrawableGameComponent.cs \
	src/FrameworkDispatcher.cs \
	src/Game.cs \
	src/GameComponent.cs \
	src/GameComponentCollection.cs \
	src/GameComponentCollectionEventArgs.cs \
	src/GamePlatform.cs \
	src/GameServiceContainer.cs \
	src/GameTime.cs \
	src/GameWindow.cs \
	src/Graphics/ClearOptions.cs \
	src/Graphics/ColorWriteChannels.cs \
	src/Graphics/CubeMapFace.cs \
	src/Graphics/DepthFormat.cs \
	src/Graphics/DeviceLostException.cs \
	src/Graphics/DeviceNotResetException.cs \
	src/Graphics/DirectionalLight.cs \
	src/Graphics/DisplayMode.cs \
	src/Graphics/DisplayModeCollection.cs \
	src/Graphics/DxtUtil.cs \
	src/Graphics/Effect/Effect.cs \
	src/Graphics/Effect/EffectAnnotation.cs \
	src/Graphics/Effect/EffectAnnotationCollection.cs \
	src/Graphics/Effect/EffectMaterial.cs \
	src/Graphics/Effect/EffectParameter.cs \
	src/Graphics/Effect/EffectParameterClass.cs \
	src/Graphics/Effect/EffectParameterCollection.cs \
	src/Graphics/Effect/EffectParameterType.cs \
	src/Graphics/Effect/EffectPass.cs \
	src/Graphics/Effect/EffectPassCollection.cs \
	src/Graphics/Effect/EffectTechnique.cs \
	src/Graphics/Effect/EffectTechniqueCollection.cs \
	src/Graphics/Effect/IEffectFog.cs \
	src/Graphics/Effect/IEffectLights.cs \
	src/Graphics/Effect/IEffectMatrices.cs \
	src/Graphics/Effect/Resources.cs \
	src/Graphics/Effect/StockEffects/AlphaTestEffect.cs \
	src/Graphics/Effect/StockEffects/BasicEffect.cs \
	src/Graphics/Effect/StockEffects/DualTextureEffect.cs \
	src/Graphics/Effect/StockEffects/EffectHelpers.cs \
	src/Graphics/Effect/StockEffects/EnvironmentMapEffect.cs \
	src/Graphics/Effect/StockEffects/SkinnedEffect.cs \
	src/Graphics/Effect/StockEffects/SpriteEffect.cs \
	src/Graphics/GraphicsAdapter.cs \
	src/Graphics/GraphicsDevice.cs \
	src/Graphics/GraphicsDeviceStatus.cs \
	src/Graphics/GraphicsProfile.cs \
	src/Graphics/GraphicsResource.cs \
	src/Graphics/IGLDevice.cs \
	src/Graphics/IGraphicsDeviceService.cs \
	src/Graphics/IRenderTarget.cs \
	src/Graphics/Model.cs \
	src/Graphics/ModelBone.cs \
	src/Graphics/ModelBoneCollection.cs \
	src/Graphics/ModelEffectCollection.cs \
	src/Graphics/ModelMesh.cs \
	src/Graphics/ModelMeshCollection.cs \
	src/Graphics/ModelMeshPart.cs \
	src/Graphics/ModelMeshPartCollection.cs \
	src/Graphics/NoSuitableGraphicsDeviceException.cs \
	src/Graphics/OcclusionQuery.cs \
	src/Graphics/OpenGLDevice.cs \
	src/Graphics/OpenGLDevice_GL.cs \
	src/Graphics/PackedVector/Alpha8.cs \
	src/Graphics/PackedVector/Bgr565.cs \
	src/Graphics/PackedVector/Bgra4444.cs \
	src/Graphics/PackedVector/Bgra5551.cs \
	src/Graphics/PackedVector/Byte4.cs \
	src/Graphics/PackedVector/HalfSingle.cs \
	src/Graphics/PackedVector/HalfTypeHelper.cs \
	src/Graphics/PackedVector/HalfVector2.cs \
	src/Graphics/PackedVector/HalfVector4.cs \
	src/Graphics/PackedVector/IPackedVector.cs \
	src/Graphics/PackedVector/NormalizedByte2.cs \
	src/Graphics/PackedVector/NormalizedByte4.cs \
	src/Graphics/PackedVector/NormalizedShort2.cs \
	src/Graphics/PackedVector/NormalizedShort4.cs \
	src/Graphics/PackedVector/Rg32.cs \
	src/Graphics/PackedVector/Rgba64.cs \
	src/Graphics/PackedVector/Rgba1010102.cs \
	src/Graphics/PackedVector/Short2.cs \
	src/Graphics/PackedVector/Short4.cs \
	src/Graphics/PresentationParameters.cs \
	src/Graphics/PresentInterval.cs \
	src/Graphics/PrimitiveType.cs \
	src/Graphics/RenderTarget2D.cs \
	src/Graphics/RenderTargetBinding.cs \
	src/Graphics/RenderTargetCube.cs \
	src/Graphics/RenderTargetUsage.cs \
	src/Graphics/ResourceCreatedEventArgs.cs \
	src/Graphics/ResourceDestroyedEventArgs.cs \
	src/Graphics/SamplerStateCollection.cs \
	src/Graphics/SetDataOptions.cs \
	src/Graphics/SpriteBatch.cs \
	src/Graphics/SpriteEffects.cs \
	src/Graphics/SpriteFont.cs \
	src/Graphics/SpriteSortMode.cs \
	src/Graphics/States/Blend.cs \
	src/Graphics/States/BlendFunction.cs \
	src/Graphics/States/BlendState.cs \
	src/Graphics/States/CompareFunction.cs \
	src/Graphics/States/CullMode.cs \
	src/Graphics/States/DepthStencilState.cs \
	src/Graphics/States/FillMode.cs \
	src/Graphics/States/RasterizerState.cs \
	src/Graphics/States/SamplerState.cs \
	src/Graphics/States/StencilOperation.cs \
	src/Graphics/States/TextureAddressMode.cs \
	src/Graphics/States/TextureFilter.cs \
	src/Graphics/SurfaceFormat.cs \
	src/Graphics/Texture.cs \
	src/Graphics/Texture2D.cs \
	src/Graphics/Texture3D.cs \
	src/Graphics/TextureCollection.cs \
	src/Graphics/TextureCube.cs \
	src/Graphics/Vertices/BufferUsage.cs \
	src/Graphics/Vertices/DynamicIndexBuffer.cs \
	src/Graphics/Vertices/DynamicVertexBuffer.cs \
	src/Graphics/Vertices/IndexBuffer.cs \
	src/Graphics/Vertices/IndexElementSize.cs \
	src/Graphics/Vertices/IVertexType.cs \
	src/Graphics/Vertices/VertexBuffer.cs \
	src/Graphics/Vertices/VertexBufferBinding.cs \
	src/Graphics/Vertices/VertexDeclaration.cs \
	src/Graphics/Vertices/VertexDeclarationCache.cs \
	src/Graphics/Vertices/VertexElement.cs \
	src/Graphics/Vertices/VertexElementFormat.cs \
	src/Graphics/Vertices/VertexElementUsage.cs \
	src/Graphics/Vertices/VertexPositionColor.cs \
	src/Graphics/Vertices/VertexPositionColorTexture.cs \
	src/Graphics/Vertices/VertexPositionNormalTexture.cs \
	src/Graphics/Vertices/VertexPositionTexture.cs \
	src/Graphics/Viewport.cs \
	src/GraphicsDeviceInformation.cs \
	src/GraphicsDeviceManager.cs \
	src/IDrawable.cs \
	src/IGameComponent.cs \
	src/IGraphicsDeviceManager.cs \
	src/Input/Buttons.cs \
	src/Input/ButtonState.cs \
	src/Input/GamePadButtons.cs \
	src/Input/GamePadCapabilities.cs \
	src/Input/GamePadDeadZone.cs \
	src/Input/GamePadDPad.cs \
	src/Input/GamePadState.cs \
	src/Input/GamePadThumbSticks.cs \
	src/Input/GamePadTriggers.cs \
	src/Input/GamePadType.cs \
	src/Input/Keyboard.cs \
	src/Input/KeyboardState.cs \
	src/Input/Keys.cs \
	src/Input/KeyState.cs \
	src/Input/MouseState.cs \
	src/Input/TextInputEXT.cs \
	src/IUpdateable.cs \
	src/LaunchParameters.cs \
	src/MathHelper.cs \
	src/Matrix.cs \
	src/Media/MediaPlayer.cs \
	src/Media/MediaQueue.cs \
	src/Media/MediaState.cs \
	src/Media/SongCollection.cs \
	src/Media/VideoSoundtrackType.cs \
	src/Media/VisualizationData.cs \
	src/Media/Xiph/Song.cs \
	src/Media/Xiph/Video.cs \
	src/Media/Xiph/VideoPlayer.cs \
	src/NamespaceDocs.cs \
	src/Plane.cs \
	src/PlaneIntersectionType.cs \
	src/PlayerIndex.cs \
	src/Point.cs \
	src/PreparingDeviceSettingsEventArgs.cs \
	src/Properties/AssemblyInfo.cs \
	src/Quaternion.cs \
	src/Ray.cs \
	src/Rectangle.cs \
	src/SDL2/Input/SDL2_GamePad.cs \
	src/SDL2/Input/SDL2_KeyboardUtil.cs \
	src/SDL2/Input/SDL2_Mouse.cs \
	src/SDL2/SDL2_GamePlatform.cs \
	src/SDL2/SDL2_GameWindow.cs \
	src/Storage/StorageContainer.cs \
	src/Storage/StorageDevice.cs \
	src/Storage/StorageDeviceNotConnectedException.cs \
	src/TitleContainer.cs \
	src/Utilities/AssemblyHelper.cs \
	src/Utilities/FileHelpers.cs \
	src/Vector2.cs \
	src/Vector3.cs \
	src/Vector4.cs \
	lib/SDL2-CS/src/SDL2.cs \
	lib/SDL2-CS/src/SDL2_image.cs \
	lib/SDL2-CS/src/LPUtf8StrMarshaler.cs \
	lib/OpenAL-CS/src/ALC10.cs \
	lib/OpenAL-CS/src/ALC11.cs \
	lib/OpenAL-CS/src/AL10.cs \
	lib/OpenAL-CS/src/AL11.cs \
	lib/OpenAL-CS/src/ALEXT.cs \
	lib/OpenAL-CS/src/EFX.cs \
	lib/MojoShader-CS/MojoShader.cs \
	lib/Vorbisfile-CS/Vorbisfile.cs \
	lib/TheoraPlay-CS/TheoraPlay.cs

# Targets

debug: clean-debug
	mkdir -p bin/Debug
	cp FNA.dll.config bin/Debug
	dmcs /unsafe -debug -out:bin/Debug/FNA.dll -target:library $(SRC)

clean-debug:
	rm -rf bin/Debug

release: clean-release
	mkdir -p bin/Release
	cp FNA.dll.config bin/Release
	dmcs /unsafe -optimize -out:bin/Release/FNA.dll -target:library $(SRC)

clean-release:
	rm -rf bin/Release

clean: clean-debug clean-release
	rm -rf bin

all: debug release
